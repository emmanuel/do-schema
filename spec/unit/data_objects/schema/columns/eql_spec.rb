require 'spec_helper'
require 'do-schema/column'

describe 'DataObjects::Schema::ColumnSet#eql?' do

  subject { columns.eql?(other) }

  let(:original_column)  { DataObjects::Schema::Column.new('name', {})             }
  let(:columns)          { DataObjects::Schema::ColumnSet.new([ original_column ]) }

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

    let(:columns) { DataObjects::Schema::ColumnSet.new }
    let(:other)   { DataObjects::Schema::ColumnSet.new }

    it { should be(true) }

    it 'is symmetric' do
      should == other.eql?(columns)
    end
  end

  context 'with different columns' do

    let(:different_column) { DataObjects::Schema::Column.new('different', {})         }
    let(:other)            { DataObjects::Schema::ColumnSet.new([ different_column ]) }

    it { should be(false) }

    it 'is symmetric' do
      should == other.eql?(columns)
    end

  end

end

