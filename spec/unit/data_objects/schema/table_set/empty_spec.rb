require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/empty_spec'

module DataObjects::Schema
  describe TableSet, '#empty?' do

    subject { tables.empty? }

    let(:tables) { set }

    context 'with no entries' do

      let(:set) { TableSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#empty? with no entries in it'

    end

    context 'with entries' do

      let(:set)   { TableSet.new([ table ]) }
      let(:table) { entry                   }
      let(:entry) { Table.new('name', {})   }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#empty? with entries in it'

    end

  end
end
