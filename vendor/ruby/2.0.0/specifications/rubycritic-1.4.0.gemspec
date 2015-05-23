# -*- encoding: utf-8 -*-
# stub: rubycritic 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubycritic"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Guilherme Simoes"]
  s.date = "2015-03-14"
  s.description = "RubyCritic is a tool that wraps around various static analysis gems to provide a quality report of your Ruby code."
  s.email = ["guilherme.rdems@gmail.com"]
  s.executables = ["rubycritic"]
  s.files = ["bin/rubycritic"]
  s.homepage = "https://github.com/whitesmith/rubycritic"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.6"
  s.summary = "RubyCritic is a Ruby code quality reporter"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<virtus>, ["~> 1.0"])
      s.add_runtime_dependency(%q<flay>, ["= 2.4.0"])
      s.add_runtime_dependency(%q<flog>, ["= 4.2.1"])
      s.add_runtime_dependency(%q<reek>, ["= 1.6.5"])
      s.add_runtime_dependency(%q<parser>, ["< 3.0", ">= 2.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.3"])
      s.add_development_dependency(%q<mocha>, ["~> 1.0"])
      s.add_development_dependency(%q<rubocop>, ["= 0.28.0"])
    else
      s.add_dependency(%q<virtus>, ["~> 1.0"])
      s.add_dependency(%q<flay>, ["= 2.4.0"])
      s.add_dependency(%q<flog>, ["= 4.2.1"])
      s.add_dependency(%q<reek>, ["= 1.6.5"])
      s.add_dependency(%q<parser>, ["< 3.0", ">= 2.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 5.3"])
      s.add_dependency(%q<mocha>, ["~> 1.0"])
      s.add_dependency(%q<rubocop>, ["= 0.28.0"])
    end
  else
    s.add_dependency(%q<virtus>, ["~> 1.0"])
    s.add_dependency(%q<flay>, ["= 2.4.0"])
    s.add_dependency(%q<flog>, ["= 4.2.1"])
    s.add_dependency(%q<reek>, ["= 1.6.5"])
    s.add_dependency(%q<parser>, ["< 3.0", ">= 2.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 5.3"])
    s.add_dependency(%q<mocha>, ["~> 1.0"])
    s.add_dependency(%q<rubocop>, ["= 0.28.0"])
  end
end
