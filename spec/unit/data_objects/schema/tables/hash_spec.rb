require 'spec_helper'
require 'data_objects/schema/table'

describe 'DataObjects::Schema::TableSet#hash' do

  subject { tables.hash }

  let(:table)  { DataObjects::Schema::Table.new('name')       }
  let(:tables) { DataObjects::Schema::TableSet.new([ table ]) }

  it { should be_kind_of(Integer) }

  it { should == tables.entries.hash }

end

