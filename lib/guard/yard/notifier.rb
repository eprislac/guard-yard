require 'guard/compat/plugin'
module Guard
  class Yard < Plugin
    class Notifier < Guard::Notifier
      attr_accessor :options

      # Initialize
      # @return [@options]
      def initialize(options = {})
        @options = options
      end

      def notify(summary)
        Compat::UI.notify(summary)

      end

      def notify_failure
        Compat::UI.notify('Failed')
      end

    end
  end
end