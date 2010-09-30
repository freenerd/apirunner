class ApiRunner
  require 'yaml'
  require 'expectation_matcher'
  require 'http_client'
  require 'api_configuration'
  require 'testcase'

  CONFIG_FILE = "config/api_runner.yml"
  SPEC_PATH = "test/api_runner/"
  EXCLUDES_FILE = "test/api_runner/excludes.yml"

  # initializes the object, loads environment, build base_uri
  def initialize(env)
    @spec = []
    @results = []
    @excludes = []
    @configuration = ApiConfiguration.new(YAML.load_file(self.class.config_file), env)
    load_excludes(env)
    load_url_spec
    @http_client = HttpClient.new(@configuration.protocol, @configuration.host, @configuration.port, @configuration.namespace)
    @expectation = ExpectationMatcher.new(@excludes)
  end

  # checks servers availability and invokes test cases
  def run
    if server_is_available?
      run_tests
      @results.each_with_index do |result, index|
        result.honk_in(@configuration.verbosity, index)
      end unless @results.empty?
    else
      puts("Server #{@configuration.host} seems to be unavailable!")
    end
  end

  protected

  # runs all testcases that are provided by the testclass an fills errors if there are any
  def run_tests
    puts "Running exactly #{@spec.size} tests."
    @spec.each do |test_case|
      response = send_request(test_case.request['method'].downcase.to_sym, test_case.request['path'], test_case.request['headers'], test_case.request['body'], test_case.request['parameters'])
      @expectation.test_types.each do |test_type|
        result = @expectation.check(test_type, response, test_case)
        if not result.succeeded
          putc "F"
          @results << result
          break
        else
          if test_type == @expectation.test_types.last
            @results << result
            putc "."
          end
        end
      end
    end
  end

  # sends http request and fetches response using the given http client
  def send_request(method, uri, headers, data, params)
    @http_client.send_request(method, uri, headers, data, params)
  end

  # builds target uri from base uri generated of host port and namespace as well as the ressource path
  def target_uri
    "#{@configuration.protocol}://#{@configuration.host}"
  end

  # returns true if server is available
  def server_is_available?
    return true
    !@http_client.send_request(:get, "#{@configuration.protocol}://#{@configuration.host}:#{@configuration.port}", nil, {:timeout => 5}).nil?
  end

  # loads spec cases from yaml files
  def load_url_spec
    path = self.class.spec_path
    specs = []
    Dir.new(path).entries.each do |dir_entry|
      specs.push *YAML.load_file(path+dir_entry) if not (File.directory? dir_entry or dir_entry.match(/^\./) or dir_entry.match(/excludes/))
    end
    @spec = objectize(priorize(partition(specs)))
  end

  # converts the given array of raw testcases to an array of testcase objects
  def objectize(raw_specs)
    specs = []
    raw_specs.each do |spec|
      specs << Testcase.new(spec)
    end
    specs
  end

  # returns only spec whose priority level is less or equals configures priority level
  # if no priority level is configured for the api runner, 0 is assumed
  # if no priority level ist configured for a story, 0 is assumed
  def priorize(specs)
    relevant_specs = []
    specs.each do |spec|
      relevant_specs << spec if spec['priority'].nil? or spec['priority'].to_i <= @configuration.priority.to_i
    end
    relevant_specs
  end

  # partitions the spec if keywords like 'focus', 'until' or 'from exist'
  # and returns the relevant subset of specs that have to be tested then
  def partition(specs)
    relevant_specs = []
    specs.each do |spec|
      if spec['focus']
        relevant_specs << spec
        break
      elsif spec['until']
        relevant_specs = specs[0..specs.index(spec)]
        break
      elsif spec['from']
        relevant_specs = specs[specs.index(spec)..specs.size+1]
        break
      end
    end
    relevant_specs = specs if relevant_specs.empty?
    relevant_specs
  end

  # loads and parses items that need to be excluded from the checks in certain environments
  def load_excludes(env)
    excludes_file = self.class.excludes_file
    @excludes = YAML.load_file(excludes_file).detect{ |a| a.first == env.to_s }[1]["excludes"] rescue nil
  end

  # returns config files path and can be stubbed this way
  def self.config_file
    CONFIG_FILE
  end

  # returns path to spec files that can be stubbed for tests
  def self.spec_path
    SPEC_PATH
  end

  # returns excludes file path that can be stubbed
  def self.excludes_file
    EXCLUDES_FILE
  end
end

