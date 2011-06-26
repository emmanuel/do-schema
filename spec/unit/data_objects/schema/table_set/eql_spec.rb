require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe TableSet, '#eql?' do

    subject { tables.eql?(other) }

    let(:original_table)  { Table.new('name')                }
    let(:tables)          { TableSet.new([ original_table ]) }

    context 'with the same tables' do

      let(:other) { tables }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(tables)
      end
    end

    context 'with equivalent tables' do

      let(:other) { tables.dup }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(tables)
      end
    end

    context 'with both containing no tables' do

      let(:tables) { TableSet.new }
      let(:other)  { TableSet.new }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(tables)
      end
    end

    context 'with different tables' do

      let(:different_table) { Table.new('different')            }
      let(:other)           { TableSet.new([ different_table ]) }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(tables)
      end

    end

  end
end
