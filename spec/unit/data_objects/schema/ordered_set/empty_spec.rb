require 'spec_helper'
require 'data_objects/schema/support/ordered_set'
require 'spec/unit/data_objects/schema/ordered_set/shared/empty_spec'

module DataObjects::Schema
  describe OrderedSet, '#empty?' do

    subject { set.empty? }

    context 'with no entries in it' do

      let(:set) { OrderedSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#empty? with no entries in it'

    end

    context 'with entries in it' do

      let(:set)   { OrderedSet.new([entry]) }
      let(:entry) { 1                       }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#empty? with entries in it'
    end

  end
end
