module Guard
  class Yard < Plugin
    # [Guard::Yard::Options] options to pass to the guard
    class Options
      DEFAULTS = {
        cmd: 'yard',
        config: nil,
        flags: nil,
        gems: false,
        graph: false,
        path: 'doc',
        port: '8808',
        server: true,
        stats: true,
        stderr: true,
        stdout: true
      }

      class << self
        def with_defaults(options = {})
          _deep_merge(DEFAULTS, options)
        end

        private

        # Merges the Default options and user-defined options,
        # returns merged hash
        # @param hash1 [Hash, nil] The first hash to merge
        # @param hash2 [Hash, nil] The second hash to merge
        # @return [Hash] The merged hash
        def _deep_merge(hash1, hash2)
          hash1.merge(hash2) do |_key, oldval, newval|
            if oldval.instance_of?(Hash) && newval.instance_of?(Hash)
              _deep_merge(oldval, newval)
            else
              newval
            end
          end
        end
      end
    end
  end
end
