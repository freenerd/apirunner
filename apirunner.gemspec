# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{apirunner}
  s.version = "0.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jan@moviepilot.com"]
  s.date = %q{2011-02-22}
  s.description = %q{apirunner is a testsuite to query your RESTful JSON API and match response with your defined expectations}
  s.email = %q{developers@moviepilot.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".gitignore",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "apirunner.gemspec",
    "changelog.txt",
    "examples/config/api_runner.yml",
    "examples/test/api_runner/001_create_user.yml",
    "examples/test/api_runner/002_update_resources.yml",
    "examples/test/api_runner/003_update_ratings.yml",
    "examples/test/api_runner/004_update_series_ratings.yml",
    "examples/test/api_runner/005_rateables_and_pagination.yml",
    "examples/test/api_runner/006_recommendations.yml",
    "examples/test/api_runner/007_item_predictions.yml",
    "examples/test/api_runner/008_discovery.yml",
    "examples/test/api_runner/010_fsk.yml",
    "examples/test/api_runner/011_misc.yml",
    "examples/test/api_runner/012_telekom_performance_tests.yml",
    "examples/test/api_runner/013_telekom_test_data_expectation.yml",
    "examples/test/api_runner/014-extended-unpersonalized-discovery.yml",
    "examples/test/api_runner/015-extended-personalized-discovery.yml",
    "examples/test/api_runner/016_create_10000_users.yml",
    "examples/test/api_runner/100_basic_varnish_tests.yml",
    "examples/test/api_runner/101_user_cache_update_and_delete_tests.yml",
    "examples/test/api_runner/102_user_cache_recommendations.yml",
    "examples/test/api_runner/103_user_chache_predictions.yml",
    "examples/test/api_runner/104_user_cache_discovery.yml",
    "examples/test/api_runner/105_test_discovery_caching.yml",
    "examples/test/api_runner/999_delete_user.yml",
    "examples/test/api_runner/excludes.yml",
    "features/apirunner.feature",
    "features/step_definitions/apirunner_steps.rb",
    "features/support/env.rb",
    "lib/api_configuration.rb",
    "lib/api_runner.rb",
    "lib/apirunner.rb",
    "lib/apirunner/railtie.rb",
    "lib/checker.rb",
    "lib/csv_writer.rb",
    "lib/curl_command_generator.rb",
    "lib/expectation_matcher.rb",
    "lib/http_client.rb",
    "lib/plugins/plug01_response_json_syntax_checker.rb",
    "lib/plugins/plug02_response_code_checker.rb",
    "lib/plugins/plug03_response_header_checker.rb",
    "lib/plugins/plug04_response_body_checker.rb",
    "lib/plugins/plug05_response_time_checker.rb",
    "lib/result.rb",
    "lib/string_ext.rb",
    "lib/tasks/api.rake",
    "lib/testcase.rb",
    "spec/.rspec",
    "spec/api_configuration_spec.rb",
    "spec/api_runner_spec.rb",
    "spec/checker_spec.rb",
    "spec/expectation_matcher_spec.rb",
    "spec/http_client_spec.rb",
    "spec/response_body_checker_spec.rb",
    "spec/result_spec.rb",
    "spec/spec_helper.rb",
    "spec/testcase_spec.rb"
  ]
  s.homepage = %q{http://github.com/moviepilot/apirunner}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{one-line summary of your gem}
  s.test_files = [
    "spec/api_configuration_spec.rb",
    "spec/api_runner_spec.rb",
    "spec/checker_spec.rb",
    "spec/expectation_matcher_spec.rb",
    "spec/http_client_spec.rb",
    "spec/response_body_checker_spec.rb",
    "spec/result_spec.rb",
    "spec/spec_helper.rb",
    "spec/testcase_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
      s.add_runtime_dependency(%q<json>, ["~> 1.4.6"])
      s.add_runtime_dependency(%q<aaronh-chronic>, ["~> 0.3.9"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0.beta.19"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.8"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0.beta.19"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
      s.add_dependency(%q<json>, ["~> 1.4.6"])
      s.add_dependency(%q<aaronh-chronic>, ["~> 0.3.9"])
      s.add_dependency(%q<rspec>, [">= 2.0.0.beta.19"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0.9.8"])
      s.add_dependency(%q<rspec>, [">= 2.0.0.beta.19"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
    s.add_dependency(%q<json>, ["~> 1.4.6"])
    s.add_dependency(%q<aaronh-chronic>, ["~> 0.3.9"])
    s.add_dependency(%q<rspec>, [">= 2.0.0.beta.19"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0.9.8"])
    s.add_dependency(%q<rspec>, [">= 2.0.0.beta.19"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

