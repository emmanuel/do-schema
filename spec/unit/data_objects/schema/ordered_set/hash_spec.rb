require 'spec_helper'
require 'data_objects/schema/support/ordered_set'

module DataObjects::Schema
  describe OrderedSet, '#hash' do

    subject { ordered_set.hash }

    let(:entry)       { 1                         }
    let(:ordered_set) { OrderedSet.new([ entry ]) }

    it { should be_kind_of(::Integer) }

    it { should == ordered_set.entries.hash }

  end
end
