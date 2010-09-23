# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{apirunner}
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jan@moviepilot.com"]
  s.date = %q{2010-09-23}
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
    "examples/test/api_runner/001_create_ressource.yml",
    "examples/test/api_runner/999_delete_ressource.yml",
    "examples/test/api_runner/excludes.yml",
    "features/apirunner.feature",
    "features/step_definitions/apirunner_steps.rb",
    "features/support/env.rb",
    "lib/api_runner.rb",
    "lib/apirunner.rb",
    "lib/apirunner/railtie.rb",
    "lib/expectation_matcher.rb",
    "lib/http_client.rb",
    "lib/tasks/api.rake",
    "spec/.rspec",
    "spec/api_runner_spec.rb",
    "spec/expectation_matcher_spec.rb",
    "spec/http_client_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/moviepilot/apirunner}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{one-line summary of your gem}
  s.test_files = [
    "spec/api_runner_spec.rb",
    "spec/expectation_matcher_spec.rb",
    "spec/http_client_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.6.1"])
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
      s.add_dependency(%q<rest-client>, [">= 1.6.1"])
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
    s.add_dependency(%q<rest-client>, [">= 1.6.1"])
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

