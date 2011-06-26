require 'spec_helper'
require 'data_objects/schema/support/ordered_set'
require 'spec/unit/data_objects/schema/ordered_set/shared/entries_spec'

module DataObjects::Schema
  describe OrderedSet, '#entries' do

    subject { ordered_set.entries }

    let(:ordered_set) { set }

    context 'with no entries' do

      let(:set) { OrderedSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with no entries'

    end

    context 'with entries' do

      let(:set)   { ColumnSet.new([ entry ]) }
      let(:entry) { 1                        }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with entries'

    end

  end
end
