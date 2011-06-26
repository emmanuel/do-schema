require 'spec_helper'
require 'data_objects/schema/support/ordered_set'

module DataObjects::Schema
  module Specs

    # Used to test duck typing behavior
    class OrderedSetDuck
      attr_reader :entries

      def initialize(columns = [])
        @entries = OrderedSet.new
      end
    end
  end

  describe OrderedSet, '#==' do

    subject { ordered_set == other }

    let(:original_entry)  { 1                                  }
    let(:ordered_set)     { OrderedSet.new([ original_entry ]) }

    context 'with the same ordered_set' do

      let(:other) { ordered_set }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == ordered_set)
      end
    end

    context 'with equivalent ordered_set' do

      let(:other) { ordered_set.dup }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == ordered_set)
      end
    end

    # TODO This probably needs more thought
    context 'with a class that quacks like OrderedSet and is equivalent otherwise' do

      let(:other) { Specs::OrderedSetDuck.new([ original_entry ]) }

      it { should be(false) }

      it 'is symmetric' do
        should == (other == ordered_set)
      end
    end

    context 'with a subclass that is equivalent otherwise' do

      let(:other) { Class.new(OrderedSet).new([ original_entry ]) }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == ordered_set)
      end
    end

    context 'with both containing no ordered_set' do

      let(:ordered_set) { OrderedSet.new }
      let(:other)  { OrderedSet.new }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == ordered_set)
      end
    end

    context 'with different ordered_set' do

      let(:different_entry) { 2                                   }
      let(:other)           { OrderedSet.new([ different_entry ]) }

      it { should be(false) }

      it 'is symmetric' do
        should == (other == ordered_set)
      end

    end

  end
end
