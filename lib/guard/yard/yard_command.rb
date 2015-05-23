require 'guard'
require 'guard/yard'
require 'pry-nav'

module Guard
  class Yard < Plugin
    # [Guard::Yard::YardCommand] Generates command string
    class YardCommand < String
      COMMAND_EXCEPTION = 'Invalid Command Exception'
      COMMAND_EMSG = 'is not a valid command.'
      ENDING_MSG = '[Guard::Yard] has been fired. Exiting...'

      attr_accessor :path, :options, :parts

      def initialize(options = {})
        begin
          _options = Guard::Yard::Options
                     .with_defaults(options)
          arg_error_check(_options)
          super(_parts(_options).join(' '))
        rescue ArgumentError => e
          arg_output(e)
        end
      end

      private

      def arg_output(error)
        $stdout.puts error.reason
        $stdout.puts error.backtrace
        $stdout.puts ENDING_MSG
      end

      def arg_error_check(options)
        e_reason = %W(ArgumentError: #{COMMAND_EXCEPTION}:)
        e_reason << "#{options[:cmd]}"
        e_reason << "#{COMMAND_EMSG}"
        unless options[:cmd][0..3] == 'yard'
          fail(ArgumentError.new(e_reason))
        end
      end

      # Returns a StringArray of command parts
      # @return [StringArray]
      def _parts(options)
        parts = %w(rm -rf .yardoc)
        parts << '&& bundle exec'
        if options[:cmd] == 'yard'
          parts << options[:cmd]
          parts << options[:path]
          (parts << "--#{options[:flags].join(' --')}") if options[:flags]
        else
          parts << options[:cmd]
        end
        additional_options(parts, options)
      end

      def additional_options(parts, options={})
        (parts << "&& bundle exec yard gems") if options[:gems]
        (parts << "&& bundle exec yard graph") if options[:graph]
        parts
      end
    end
    # Class for ArgumentError
    # @return [SignalException]
    class ArgumentError < SignalException
      attr_reader :reason
      def initialize(reason)
        @reason = reason
      end

      def to_sym
        @reason
      end
    end
  end
end
