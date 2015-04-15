# encoding: utf-8

module RuboCop
  module Cop
    module Style
      # This cops looks for uses of global variables.
      # It does not report offenses for built-in global variables.
      # Built-in global variables are allowed by default. Additionally
      # users can allow additional variables via the AllowedVariables option.
      #
      # Note that backreferences like $1, $2, etc are not global variables.
      class GlobalVars < Cop
        MSG = 'Do not introduce global variables.'

        # predefined global variables their English aliases
        # http://www.zenspider.com/Languages/Ruby/QuickRef.html
        BUILT_IN_VARS = %w(
          $: $LOAD_PATH
          $" $LOADED_FEATURES
          $0 $PROGRAM_NAME
          $! $ERROR_INFO
          $@ $ERROR_POSITION
          $; $FS $FIELD_SEPARATOR
          $, $OFS $OUTPUT_FIELD_SEPARATOR
          $/ $RS $INPUT_RECORD_SEPARATOR
          $\\ $ORS $OUTPUT_RECORD_SEPARATOR
          $. $NR $INPUT_LINE_NUMBER
          $_ $LAST_READ_LINE
          $> $DEFAULT_OUTPUT
          $< $DEFAULT_INPUT
          $$ $PID $PROCESS_ID
          $? $CHILD_STATUS
          $~ $LAST_MATCH_INFO
          $= $IGNORECASE
          $* $ARGV
          $& $MATCH
          $` $PREMATCH
          $' $POSTMATCH
          $+ $LAST_PAREN_MATCH
          $stdin $stdout $stderr
          $DEBUG $FILENAME $VERBOSE $SAFE
          $-0 $-a $-d $-F $-i $-I $-l $-p $-v $-w
          $CLASSPATH $JRUBY_VERSION $JRUBY_REVISION $ENV_JAVA
        ).map(&:to_sym)

        def user_vars
          if cop_config['AllowedVariables']
            cop_config['AllowedVariables'].map(&:to_sym)
          else
            []
          end
        end

        def allowed_var?(global_var)
          BUILT_IN_VARS.include?(global_var) || user_vars.include?(global_var)
        end

        def on_gvar(node)
          check(node)
        end

        def on_gvasgn(node)
          check(node)
        end

        def check(node)
          global_var, = *node

          add_offense(node, :name) unless allowed_var?(global_var)
        end
      end
    end
  end
end