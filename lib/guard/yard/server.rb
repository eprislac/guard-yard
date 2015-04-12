require 'socket'
require 'guard/yard'

module Guard
  module Yard
    # [Guard::Yard::Server] runs server
    class Server
      attr_accessor :pid, :port
      SERVER_START_ERROR = '[Guard::Yard] Error starting documentation server.'
      SERVER_START_MSG = '[Guard::Yard] Starting YARD Documentation Server.'
      SERVER_STOP_MSG = '[Guard::Yard] Stopping YARD Documentation Server.'
      SERVER_START_SUCCESS = '[Guard::Yard] Server successfully started.'
      SERVER_START_FAIL = '[Guard::Yard] Server NOT started.'
      def initialize(options = {})
        @opts = Options.with_defaults(options)
      end

      def spawn
        UI.info(SERVER_START_MSG)

        command = YardCommand.new(options)
        pid Process.spawn(command)
      end

      def kill
        UI.info(SERVER_STOP_MSG)
        begin
          if pid
            Process.kill('QUIT', pid)
            Process.wait2(pid)
          end
        rescue Errno::ESRCH, Errno::ECHILD
          true
        end
        true
      end

      def verify
        5.times do
          sleep 1
          begin
            notify_success
          rescue Errno::ECONNREFUSED
            next
          rescue UI.error(SERVER_START_ERROR)
            notify_fail
          end
        end
      end

      def notify_success
        UI.info(SERVER_START_SUCCESS)
        true
      end

      def notify_fail
        Notifier.notify(SERVER_START_FAIL,
                        title: 'yard',
                        image: :failed)
        false
      end
    end
  end
end
