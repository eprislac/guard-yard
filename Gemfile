source 'https://rubygems.org'

# Specify your gem's dependencies in guard-yard.gemspec
gemspec

group :test do
  gem 'rspec', '~> 3.1'
  gem 'rake'
end

group :development do
  gem 'pry-nav'
end

group :development, :test do
  gem 'guard', require: false
  gem 'guard-compat', '>= 0.0.2', require: false
  gem 'rubocop', require: false
  gem 'guard-rubocop', require: false
  gem 'coveralls', require: false
  gem 'guard-rspec', require: false
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
  gem 'rubycritic', require: false
  gem 'guard-rubycritic'
  gem 'ruby_gntp'
end

group :doc do
  gem 'yard'
end