require 'data_objects/schema/support/ordered_set'
require 'data_objects/schema/column'

module DataObjects
  module Schema

    class TableSet < OrderedSet
    end

    class Table

      include Enumerable
      extend Equalizable

      attr_reader :name
      attr_reader :columns

      equalize :name, :columns

      def initialize(name, columns = [])
        @name    = name
        @columns = ColumnSet.new(columns)
      end

      def each(&block)
        columns.each(&block)
        self
      end

    end # class Table

  end # module Schema
end # module DataObjects

