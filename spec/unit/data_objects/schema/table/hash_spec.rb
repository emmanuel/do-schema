require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe Table, '#hash' do

    subject { table.hash }

    let(:name)     { 'name'                    }
    let(:column)   { Column.new(name, {})      }
    let(:columns)  { ColumnSet.new([ column ]) }

    let(:table)    { Table.new(name, columns)  }

    it { should be_kind_of(::Integer) }

    it { should == name.hash ^ columns.entries.hash }

  end
end
