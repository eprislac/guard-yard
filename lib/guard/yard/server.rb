require 'socket'
require 'guard'
require 'guard/yard'
require 'guard/yard/yard_command'
require 'yard'

module Guard
  class Yard < Plugin
    # [Guard::Yard::Server] runs server
    class Server
      attr_accessor :pid, :options
      SERVER_START_ERROR = '[Guard::Yard] Error starting documentation server.'
      SERVER_START_MSG = '[Guard::Yard] Starting YARD Documentation Server.'
      SERVER_STOP_MSG = '[Guard::Yard] Stopping YARD Documentation Server.'
      SERVER_START_SUCCESS = '[Guard::Yard] Server successfully started.'
      SERVER_START_FAIL = '[Guard::Yard] Server NOT started.'

      def initialize(options = {})
        @options = options
      end

      def spawn
        Guard::Compat::UI.info(SERVER_START_MSG)
        command = Guard::Yard::YardCommand.new(@options)
        @pid = Process.spawn(command)
      end

      def kill
        Guard::Compat::UI.info(SERVER_STOP_MSG)
        begin
          if @pid
            Process.kill('QUIT', @pid)
            Process.wait2(@pid)
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
          rescue Compat::UI.error(SERVER_START_ERROR)
            notify_fail
          end
        end
      end

      def notify_success
        Guard::Compat::UI.info(SERVER_START_SUCCESS)
        true
      end

      def notify_fail
        Guard::Compat::UI.notify(SERVER_START_FAIL,
                          title: 'yard',
                          image: :failed)
        false
      end
    end
  end
end
