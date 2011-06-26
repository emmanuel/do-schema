require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe Table, '#columns' do

    context 'with no columns given at construction time' do

      subject { table.columns }

      let(:table) { Table.new('name') }

      it { should be_instance_of(ColumnSet) }
      it { should == ColumnSet.new([])      }

    end

    context 'with an array of columns at construction time' do

      subject { table.columns }

      let(:table) { Table.new('name', []) }

      it { should be_instance_of(ColumnSet) }
      it { should == ColumnSet.new([])      }

    end

  end
end
