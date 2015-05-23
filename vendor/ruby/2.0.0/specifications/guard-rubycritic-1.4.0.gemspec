# -*- encoding: utf-8 -*-
# stub: guard-rubycritic 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-rubycritic"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Guilherme Simoes"]
  s.date = "2015-03-14"
  s.description = "    Ruby Critic is a tool that listens to modifications in Ruby classes, modules and methods and\n    reports any new code smells it finds.\n"
  s.email = ["guilherme.rdems@gmail.com"]
  s.homepage = "https://github.com/whitesmith/guard-rubycritic"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Listens to modifications and detects smells in Ruby files"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, ["~> 2.6"])
      s.add_runtime_dependency(%q<rubycritic>, ["~> 1.4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.3"])
      s.add_development_dependency(%q<mocha>, ["~> 1.0"])
    else
      s.add_dependency(%q<guard>, ["~> 2.6"])
      s.add_dependency(%q<rubycritic>, ["~> 1.4"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 5.3"])
      s.add_dependency(%q<mocha>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<guard>, ["~> 2.6"])
    s.add_dependency(%q<rubycritic>, ["~> 1.4"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 5.3"])
    s.add_dependency(%q<mocha>, ["~> 1.0"])
  end
end
