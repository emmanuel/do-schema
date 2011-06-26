require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/append_spec'

module DataObjects::Schema
  describe TableSet, '#<<' do

    subject { tables << entry2 }

    let(:tables) { set                      }

    let(:entry1) { Table.new('table1')      }
    let(:set)    { TableSet.new([ entry1 ]) }

    context 'when appending a not yet present table' do

      let(:entry2)  { Table.new('table2')   }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending a not yet included entry'

    end

    context 'when appending an already present table' do

      let(:entry2)  { entry1.dup }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending an already included entry'

    end

  end
end
