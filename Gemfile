source 'https://rubygems.org'

# Specify your gem's dependencies in guard-yard.gemspec
gemspec

group :test do
  gem "rspec", "~> 3.1"
  gem 'rake'
  gem "coveralls", require: false
end

group :development do
  gem "guard-compat", ">= 0.0.2", require: false
  gem 'pry-nav'
end

group :development, :test do
  gem "rubocop", "0.25.0", require: false
  gem "guard-rubocop", require: false
end

group :tool do
  gem "ruby_gntp", require: false
end