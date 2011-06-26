require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/length_spec'

module DataObjects::Schema
  describe TableSet, '#length' do

    subject { tables.length }

    context 'when no entry is present' do

      let(:tables) { TableSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when no entry is present'

    end

    context 'when 1 entry is present' do

      let(:tables) { TableSet.new([ table ]) }
      let(:table)  { Table.new('name')       }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when 1 entry is present'

    end

    context 'when more than 1 entry is present' do

      let(:tables)  { TableSet.new(entries)  }

      let(:entries) { [table1, table2]       }

      let(:table1)  { Table.new('table1')    }
      let(:table2)  { Table.new('table2')    }

      let(:expected_length) { entries.length }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when more than 1 entry is present'

    end

  end
end
