# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require 'guard/yard/version'

Gem::Specification.new do |s|
  s.name          = 'guard-yard'
  s.version       = Guard::Yard::VERSION
  s.authors       = ['Eddie Prislac']
  s.email         = ['prislac@informz.com']

  s.summary       = %q{A better guard for YARD. Inspired by panthomakos/guard-yard and rspec-guard}
  s.description   = %q{Had a lot of trouble with the original version of guard-yard, decided to try and make a better one}
  s.homepage      = %q{http://github.org/eprislac/guard-yard}
  s.license       = %q{MIT}

  s.add_runtime_dependency %q(guard-compat), %q(~> 1.1)
  s.add_development_dependency %q(guard), %q(>=2.1)
  s.add_runtime_dependency %q(yard), %q(~> 0.8)
  s.add_development_dependency %q(bundler)
  s.add_development_dependency %q(pry)
  s.add_development_dependency %q(rainbow)
  s.add_development_dependency %q(rake), %q(~> 10.1)
  s.add_development_dependency %q(launchy), %q(~> 2.4)

  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR) #Dir.glob(%w({lib}/**/*)) + %w(README.md)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths  = %w(lib)

  # if s.respond_to?(:metadata)
  #   s.metadata['allowed_push_host'] =
  #      %q{TODO: Set to 'http://mygemserver.com'
  # to prevent pushes to rubygems.org, or delete to
  # allow pushes to any server.}
  # end
end
