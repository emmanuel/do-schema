require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/merge_spec'

module DataObjects::Schema
  describe TableSet, '#merge' do

    context 'when merging two empty sets' do

      subject { tables.merge([]) }

      let(:tables) { set          }
      let(:set)    { TableSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#merge when merging two empty sets'

    end

    context 'when merging a set with already present entries' do

      subject { tables.merge([entry]) }

      let(:tables) { set                     }

      let(:set)    { TableSet.new([ entry ]) }
      let(:entry)  { Table.new('name')       }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#merge when merging a set with already present entries'

    end

    context 'when merging a set with not yet present entries' do

      subject { tables.merge([entry2]) }

      let(:tables) { set                                           }

      let(:set)    { TableSet.new([ entry1 ]) }
      let(:entry1) { Table.new('entry1')      }
      let(:entry2) { Table.new('entry2')      }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#merge when merging a set with not yet present entries'

    end
  end
end
