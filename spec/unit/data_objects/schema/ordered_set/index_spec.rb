require 'spec_helper'
require 'data_objects/schema/support/ordered_set'
require 'spec/unit/data_objects/schema/ordered_set/shared/index_spec'

module DataObjects::Schema
  describe OrderedSet, '#index' do

    subject { ordered_set.index(entry) }

    context 'when the entry is not present' do

      let(:ordered_set) { OrderedSet.new }
      let(:entry)       { 1              }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#index when the entry is not present'

    end

    context 'when 1 entry is present' do

      let(:ordered_set) { OrderedSet.new([entry]) }
      let(:entry)       { 1                       }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#index when 1 entry is present'

    end

    context 'when 2 entries are present' do

      let(:ordered_set) { OrderedSet.new([ 2, entry ]) }
      let(:entry)       { 1                            }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#index when 2 entries are present'

    end

  end
end
