require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe ColumnSet, '#eql?' do

    subject { columns.eql?(other) }

    let(:original_column)  { Column.new('name', {})             }
    let(:columns)          { ColumnSet.new([ original_column ]) }

    context 'with the same columns' do

      let(:other) { columns }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(columns)
      end
    end

    context 'with equivalent columns' do

      let(:other) { columns.dup }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(columns)
      end
    end

    context 'with both containing no columns' do

      let(:columns) { ColumnSet.new }
      let(:other)   { ColumnSet.new }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(columns)
      end
    end

    context 'with different columns' do

      let(:different_column) { Column.new('different', {})         }
      let(:other)            { ColumnSet.new([ different_column ]) }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(columns)
      end

    end

  end
end
