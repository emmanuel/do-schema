require 'do-schema/support/set'

module DataObjects
  module Schema

    class OrderedSet < Schema::Set

      # Returns the OrderedSet instance
      #
      # @param [Array] entries
      #   optional entries
      #
      # @return [OrderedSet]
      #   the ordered set instance
      #
      # @api private
      def initialize(entries = nil)
        @index = {}
        super
      end

      # Append to the OrderedSet
      #
      # @param [Object] entry
      #   the object to append
      #
      # @return [OrderedSet]
      #   returns self
      #
      # @api private
      def <<(entry)
        transform_unless(include?(entry)) do
          @index[entry] = length
          entries << entry
        end
      end

      # Return the index for the entry in the set
      #
      # @param [Object] entry
      #   the entry to check the set for
      #
      # @return [Integer, nil]
      #   the index for the entry, or nil if it does not exist
      #
      # @api private
      def index(entry)
        @index[entry]
      end

      # Check if the entry exists in the OrderedSet
      #
      # @param [Object] entry
      #   the entry to test for
      #
      # @return [Boolean]
      #
      # @api private
      def include?(entry)
        @index.has_key?(entry)
      end

    end # class OrderedSet

  end # module Schema
end # module DataObjects

