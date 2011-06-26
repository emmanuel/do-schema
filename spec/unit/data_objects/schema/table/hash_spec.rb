require 'spec_helper'
require 'data_objects/schema/table'

describe 'DataObjects::Schema::Table#hash' do

  subject { table.hash }

  let(:name)     { 'name'                                         }
  let(:column)   { DataObjects::Schema::Column.new(name, {})      }
  let(:columns)  { DataObjects::Schema::ColumnSet.new([ column ]) }

  let(:table)    { DataObjects::Schema::Table.new(name, columns)  }

  it { should be_kind_of(Integer) }

  it { should == name.hash ^ columns.entries.hash }

end

