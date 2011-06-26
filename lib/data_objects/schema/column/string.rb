require 'do-schema'

module DataObjects
  module Schema
    class Column

      class String < self

        DEFAULT_LENGTH = 50

        attr_reader :length

        def initialize(name, options)
          super
          @length = options.fetch(:length) { default_options.fetch(:length) }
        end

        def default_options
          super.merge(:length => DEFAULT_LENGTH)
        end

      end # class String

    end # class Column
  end # module Schema
end # module DataObjects

