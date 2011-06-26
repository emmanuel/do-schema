require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/each_spec'

module DataObjects::Schema
  describe TableSet do

    subject { TableSet.new }

    it_should_behave_like 'DataObjects::Schema::OrderedSet'

  end

  describe 'DataObjects::Schema::TableSet#each' do

    subject { tables.each { |entry| yields << entry } }

    let(:tables) { set                     }

    let(:set)    { TableSet.new([ table ]) }
    let(:table)  { entry                   }
    let(:entry)  { Table.new('name')       }
    let(:yields) { [ ]                     }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#each'

  end
end
