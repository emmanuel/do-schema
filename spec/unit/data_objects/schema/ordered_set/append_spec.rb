require 'spec_helper'
require 'data_objects/schema/support/ordered_set'
require 'spec/unit/data_objects/schema/ordered_set/shared/append_spec'

module DataObjects::Schema
  describe OrderedSet, '#<<' do

    subject { set << entry2 }

    let(:entry1) { 1                                             }
    let(:set)    { OrderedSet.new([ entry1 ]) }

    context 'when appending an already included entry' do

      let(:entry2) { 1 }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending an already included entry'

    end

    context 'when appending a not yet included entry' do

      let(:entry2) { 2 }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending a not yet included entry'

    end

  end
end
