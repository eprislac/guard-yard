# Guard::Yard
Tested in Ruby versions mri-1.9.3, jruby-1.7.19(19mode), 2.1.0, ruby-head and jruby-head

[![GitHub version](https://badge.fury.io/gh/eprislac%2Fguard-yard.svg)](http://badge.fury.io/gh/eprislac%2Fguard-yard)
[![Build Status](https://travis-ci.org/eprislac/guard-yard.svg?branch=master)](https://travis-ci.org/eprislac/guard-yard)
[![Coverage Status](https://coveralls.io/repos/eprislac/guard-yard/badge.svg?branch=master)](https://coveralls.io/r/eprislac/guard-yard?branch=master)
[![Dependency Status](https://gemnasium.com/eprislac/guard-yard.svg)](https://gemnasium.com/eprislac/guard-yard)
[![Code Climate](https://codeclimate.com/github/eprislac/guard-yard/badges/gpa.svg)](https://codeclimate.com/github/eprislac/guard-yard)
[![Inline docs](http://inch-ci.org/github/eprislac/guard-yard.svg?branch=master)](http://inch-ci.org/github/eprislac/guard-yard)
[![GratiPay](http://img.shields.io/gratipay/semperfried76.svg)](https://gratipay.com/semperfried76)

---


Provides templates and methods for running a yard documentation server that auto-generates its contents when changes to your code are saved.
This gem is not a fork of [panthomakos/guard-yard](http://github.com/panthomakos/guard-yard), but credit where it is due,
a good deal of his code did make it in here, although not always where he originally had it.
The direct inspiration for this gem comes from my inability to use panthomakos gem
on the versions of jruby and rails that we run at work (which are not supported).
I looked at gems we were using at work, and decided to modify the structure
of the code to better match the guard gems we were using which did work,
in particular, [guard/guard-rspec](http://github.com/guard/guard-rspec). I also began testing the hell out
of the code, running it through rspec and rubocop, and running Continuous Integration,
Documentation Checking, Dependency Checking, Code Coverage, and Code Quality analysis.

My goal with this project is a complete, professional-quality refactor of the
gem that works, out of the box, with multiple versions of ruby, rails, sinatra, guard,
and yard, and well documented.

Even though the analysis looks good so far, be advised that
this gem is in alpha right now, is only scant days old, and
has not yet been tested for anything other than Ruby compatibility.

**Install at your own risk.**

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'guard-yard', git:'git@github.com:eprislac/guard-yard.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-yard

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/eprislac/guard-yard/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
# guard-yard
