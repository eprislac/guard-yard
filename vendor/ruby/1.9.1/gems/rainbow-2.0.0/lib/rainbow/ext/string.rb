require 'rainbow'

module Rainbow
  module Ext
    module String
      module InstanceMethods

        def foreground(*color)
          Rainbow(self).foreground(*color)
        end

        alias_method :color, :foreground
        alias_method :colour, :foreground

        def background(*color)
          Rainbow(self).background(*color)
        end

        def reset
          Rainbow(self).reset
        end

        def bright
          Rainbow(self).bright
        end

        def italic
          Rainbow(self).italic
        end

        def underline
          Rainbow(self).underline
        end

        def blink
          Rainbow(self).blink
        end

        def inverse
          Rainbow(self).inverse
        end

        def hide
          Rainbow(self).hide
        end

      end
    end
  end
end

::String.send(:include, Rainbow::Ext::String::InstanceMethods)
