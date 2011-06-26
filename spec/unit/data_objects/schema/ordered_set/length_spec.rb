require 'spec_helper'
require 'data_objects/schema/support/ordered_set'
require 'spec/unit/data_objects/schema/ordered_set/shared/length_spec'

module DataObjects::Schema
  describe OrderedSet, '#length' do

    subject { ordered_set.length }

    context 'when no entry is present' do

      let(:ordered_set) { OrderedSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when no entry is present'

    end

    context 'when 1 entry is present' do

      let(:ordered_set) { OrderedSet.new([ 1 ]) }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when 1 entry is present'

    end

    context 'when more than 1 entry is present' do

      let(:ordered_set)     { OrderedSet.new(entries) }
      let(:entries)         { [ 1, 2 ]                }
      let(:expected_length) { entries.length          }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when more than 1 entry is present'

    end

  end
end
