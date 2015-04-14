module Guard
  module Yard
    class Notifier < Guard::Notifier
      attr_accessor :options

      def initialize(options = {})
        @options = options
      end

      def notify(summary)
        UI.notify(summary)
      end

      def notify_failure
        UI.notify("Failed")
      end
    end
  end
end