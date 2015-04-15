require "bundler/gem_tasks"
begin
  require 'rspec/core/rake_task'
  require 'rubocop/rake_task'

  desc 'Run rspec on the spec directory'
  RSpec::Core::RakeTask.new(:spec)

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
