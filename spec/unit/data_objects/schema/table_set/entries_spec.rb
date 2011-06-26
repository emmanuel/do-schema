require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/entries_spec'

module DataObjects::Schema
  describe TableSet, '#entries' do

    subject { tables.entries }

    let(:tables) { set }

    context 'with no entries' do

      let(:set) { TableSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with no entries'

    end

    context 'with entries' do

      let(:set)   { TableSet.new([ table ]) }
      let(:table) { entry                   }
      let(:entry) { Table.new('name')       }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with entries'

    end

  end
end
