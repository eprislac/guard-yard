require 'guard/compat/plugin'
require 'guard/yard/version'
require 'guard/yard/options'

module Guard
  # Class [Guard::Yard]
  class Yard < Plugin

    GEN_ALL_MSG = '[Guard::Yard] Generating all documentation'
    GEN_SUCCEED_MSG = '[Guard::Yard] Documentation has been generated'
    DOC_MISSING_MSG = '[Guard::Yard] Documentation missing.'
    attr_accessor :options, :server

    # Your code goes here...
    autoload :Server, 'guard/yard/server'
    def initialize(options = {})
      super
      @options = Options.with_defaults(options)
      @server = Server.new(options)
    end

    # Called once when Guard starts.
    #
    # @raise [:task_has_failed] when start has failed
    # @return [Object] the task result
    def start
      boot
    end

    # Called on pressing `stop|quit|exit|s|q|e + enter` (Guard quits).
    #
    # @raise [:task_has_failed] when stop has failed
    # @return [Object] the task result
    def stop
      server.kill
    end

    # Called when `reload|r|z + enter` is pressed.
    #
    # @raise [:task_has_failed] when reload has failed
    # @return [Object] the task result
    #
    def reload
      boot
    end

    # Called when just `enter` is pressed
    #
    # @raise [:task_has_failed] when run_all has failed
    # @return [Object] the task result
    #
    def run_all
      Guard::Compat::UI.info GEN_ALL_MSG
      system(YardCommand.new(options))
      Guard::Compat::UI.info GEN_SUCCEED_MSG
    end

    # Called on file(s) additions that the Guard plugin watches.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_additions has failed
    # @return [Object] the task result
    #
    def run_on_additions(paths)
      Guard::Compat::UI.info "[Guard::Yard] Detected changes in #{paths.join(',')}."
      paths.each { |path| document([path]) }
      Guard::Compat::UI.info "[Guard::Yard] Updated documentation for #{paths.join(',')}."
    end

    # Called on file(s) modifications that the Guard plugin watches.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_modifications has failed
    # @return [Object] the task result
    #
    def run_on_modifications(paths)
      return false if paths.empty?
      _throw_if_failed { run_for_paths(paths) }
    end

    # Called on file(s) removals that the Guard plugin watches.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_removals has failed
    # @return [Object] the task result
    #
    def run_on_removals(paths)
      return false if paths.empty?
      _throw_if_failed { run_for_paths(paths) }
    end

    private

    # Run for paths.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_removals has failed
    # @return [Object] the task result
    #
    def run_for_paths(paths)
      Guard::Compat::UI.info "[Guard::Yard] Detected changes in #{paths.join(',')}."
      paths.each { |path| document([path]) }
      Guard::Compat::UI.info "[Guard::Yard] Updated documentation for #{paths.join(',')}."
    end

    # Check.
    #
    # @raise [:task_has_failed] when run_on_removals has failed
    # @return [Object] the task result
    #
    def check
      return true if File.exist?('.yardoc')
      Guard::Compat::UI.info DOC_MISSING_MSG
      run_all && true
    end

    # Boot.
    #
    # @raise [:task_has_failed] when run_on_removals has failed
    # @return [Object] the task result
    #
    def boot
      check && server.kill && server.spawn && server.verify
    end

    def document(files)
      load_registry(files)
      yardoc = ::YARD::CLI::Yardoc.new
      yardoc.parse_arguments
      options = yardoc.options
      objects = fetch_objects(options)
      generate_templates(objects, options)
      save_registry
    end

    def generate_templates(objects, options)
      ::YARD::Templates::Engine.generate(objects, options)
    end

    def fetch_objects(options)
      ::YARD::Registry.all(:root, :module, :class).reject do |o|
        (!options[:serializer] || options[:serializer].exists?(o)) &&
          !o.files.any? { |f, _line| files.include?(f) }
      end
    end

    def load_registry(files)
      ::YARD::Registry.load!
      ::YARD::Registry.load(files, true)
      ::YARD::Registry.load_all
    end

    def save_registry
      ::YARD::Registry.save(true)
    end

    def _throw_if_failed
      throw :task_has_failed unless yield
    end
  end

end
