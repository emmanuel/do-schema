require 'data_objects/schema/support/ordered_set'
require 'data_objects/schema/column'

module DataObjects
  module Schema

    class TableSet < OrderedSet
    end

    class Table

      include Enumerable
      extend Equalizable

      # The name of this table. Must be unique within its containing Database
      # 
      # @api private
      attr_reader :name

      # The columns this table encompasses
      # 
      # @api private
      attr_reader :columns

      # Indexes associated with this table
      attr_reader :indexes
      attr_reader :primary_key
      attr_reader :foreign_keys
      attr_reader :references

      equalize :name, :columns

      def initialize(name, columns = [])
        @name    = name
        @columns = ColumnSet.new(columns)
      end

      def each(&block)
        columns.each { |column| yield column }
        self
      end

    end # class Table

  end # module Schema
end # module DataObjects

