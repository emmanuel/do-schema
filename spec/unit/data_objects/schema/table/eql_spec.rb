require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe Table, '#eql?' do

    subject { table.eql?(other) }

    let(:name)             { 'name'                            }
    let(:original_column)  { Column.new(name, {})              }
    let(:original_columns) { [original_column]                 }
    let(:table)            { Table.new(name, original_columns) }

    context 'with the same table' do

      let(:other) { table }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(table)
      end
    end

    context 'with an equivalent table' do

      let(:other) { table.dup }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(table)
      end
    end

    context 'with a table with the same name and different columns' do

      let(:column)  { Column.new('different', {}) }
      let(:columns) { ColumnSet.new([ column ])   }

      let(:other) { Table.new(name, columns) }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(table)
      end

    end

    context 'with a table with a different name and same columns' do

      #let(:name)  { 'different' }
      let(:other) { Table.new('different', original_columns) }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(table)
      end

    end

    context 'with a table with a different name and different columns' do

      let(:name)    { 'different' }
      let(:column)  { Column.new('name', {})    }
      let(:columns) { ColumnSet.new([ column ]) }

      let(:other) { Table.new(name, columns)    }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(table)
      end

    end

  end
end
