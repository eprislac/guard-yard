require "bundler/gem_tasks"
begin
  require 'rspec/core/rake_task'
  require 'rubocop/rake_task'

  RSpec::Core::RakeTask.new(:spec)
  task default: [:spec, :rubocop]

  namespace :test do
    desc "Locally run tests like Travis and HoundCI would"
    task :all_versions do
      system(*%w(bundle update --quiet)) || abort

      gemfiles = Dir["gemfiles/Gemfile.rspec-*"]

      actual_gemfiles = gemfiles.select { |f| /\d\.\d{1,2}$/ =~ f }
      actual_gemfiles.each do |gemfile|
        STDOUT.puts
        STDOUT.puts "----------------------------------------------------- "
        STDOUT.puts " >> Running tests using Gemfile: #{gemfile} <<"
        STDOUT.puts "----------------------------------------------------- "
        ENV["BUNDLE_GEMFILE"] = gemfile
        system(*%w(bundle update --quiet)) || abort
        system(*%w(bundle exec rubocop -c .hound.yml)) || abort
        system(*%w(bundle exec rspec -c -fd)) || abort
      end
    end
  end


  desc 'Run RuboCop on the lib directory'
  RuboCop::RakeTask.new(:rubocop) do |task|
    task.patterns = ['lib/**/*.rb']
    # only show the files with failures
    task.formatters = ['files']
    # don't abort rake on failure
    task.fail_on_error = false
  end

  task :default => [:rubocop, :spec]
rescue LoadError
  # no rspec available
end
