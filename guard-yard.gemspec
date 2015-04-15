# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/yard/version'
Gem::Specification.new do |s|
  s.name          = "guard-yard"
  s.version       = Guard::YardVersion::VERSION
  s.authors       = ["Eddie Prislac"]
  s.email         = ["prislac@informz.com"]

  s.summary       = %q{A better guard for YARD. Inspired by panthomakos/guard-yard and rspec-guard}
  s.description   = %q{Had a lot of trouble with the original version
                     of guard-yard, decided to try and make a better one}
  s.homepage      = "TODO: Put your gem's website or public repo URL here."
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  s.add_dependency "guard", "~> 2.1"
  s.add_dependency "guard-compat", "~> 1.1"
  s.add_development_dependency "yard", "~> 0.8"
  s.add_development_dependency "rainbow"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake", "~> 10.1"
  s.add_development_dependency "launchy", "~> 2.4"
end
