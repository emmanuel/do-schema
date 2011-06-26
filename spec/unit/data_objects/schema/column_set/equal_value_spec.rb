require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  module Specs

    # Used to test duck typing behavior
    class ColumnSetDuck
      attr_reader :entries

      def initialize(columns = [])
        @entries = OrderedSet.new
      end
    end
  end

  describe ColumnSet, '#==' do

    subject { columns == other }

    let(:original_column)  { Column.new('name', {})             }
    let(:columns)          { ColumnSet.new([ original_column ]) }

    context 'with the same columns' do

      let(:other) { columns }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == columns)
      end
    end

    context 'with equivalent columns' do

      let(:other) { columns.dup }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == columns)
      end
    end

    # TODO This probably needs more thought
    context 'with a class that quacks like ColumnSet and is equivalent otherwise' do

      let(:other) { Specs::ColumnSetDuck.new([ original_column ]) }

      it { should be(false) }

      it 'is symmetric' do
        should == (other == columns)
      end
    end

    context 'with a subclass that is equivalent otherwise' do

      let(:other) { Class.new(ColumnSet).new([ original_column ]) }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == columns)
      end
    end

    context 'with both containing no columns' do

      let(:columns) { ColumnSet.new }
      let(:other)   { ColumnSet.new }

      it { should be(true) }

      it 'is symmetric' do
        should == (other == columns)
      end
    end

    context 'with different columns' do

      let(:different_column) { Column.new('different', {})         }
      let(:other)            { ColumnSet.new([ different_column ]) }

      it { should be(false) }

      it 'is symmetric' do
        should == (other == columns)
      end

    end

  end
end

