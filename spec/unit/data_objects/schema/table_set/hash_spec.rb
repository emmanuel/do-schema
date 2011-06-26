require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe TableSet, '#hash' do

    subject { tables.hash }

    let(:table)  { Table.new('name')       }
    let(:tables) { TableSet.new([ table ]) }

    it { should be_kind_of(::Integer) }

    it { should == tables.entries.hash }

  end
end
