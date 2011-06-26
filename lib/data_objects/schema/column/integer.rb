require 'data_objects/schema/column'

module DataObjects
  module Schema
    class Column

      class Integer < self

        DEFAULT_MIN = 0
        DEFAULT_MAX = (2 ** 32) - 1

        attr_reader :min
        attr_reader :max

        def initialize(name, options)
          super
          @min = options.fetch(:min) { default_options.fetch(:min) }
          @max = options.fetch(:max) { default_options.fetch(:max) }
        end

        def default_options
          super.merge(:min => DEFAULT_MIN, :max => DEFAULT_MAX)
        end

      end # class Integer

    end # class Column
  end # module Schema
end # module DataObjects

