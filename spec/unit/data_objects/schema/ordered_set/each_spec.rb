require 'spec_helper'
require 'data_objects/schema/support/ordered_set'
require 'spec/unit/data_objects/schema/ordered_set/shared/each_spec'

module DataObjects::Schema
  describe OrderedSet do

    subject { OrderedSet.new }

    it_should_behave_like 'DataObjects::Schema::OrderedSet'

  end

  describe OrderedSet, '#each' do

    subject { set.each { |entry| yields << entry } }

    let(:set)    { OrderedSet.new([ entry ]) }
    let(:entry)  { 1                         }
    let(:yields) { []                        }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#each'

  end
end
