require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/initialize_spec'

module DataObjects::Schema
  describe TableSet, '#initialize' do

    context 'when no entries are given' do

      subject { TableSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#initialize when no entries are given'

    end

    context 'when entries are given' do

      subject { TableSet.new(tables) }

      let(:tables) { [table1, table2] }
      let(:table1) { entry1           }
      let(:table2) { entry2           }

      context 'and they do not contain duplicates' do

        let(:entry1)  { Table.new('entry1', {}) }
        let(:entry2)  { Table.new('entry2', {}) }

        it_should_behave_like 'DataObjects::Schema::OrderedSet#initialize when entries are given and they do not contain duplicates'

      end

      context 'and they contain duplicates' do

        let(:entry1)  { Table.new('entry1', {}) }
        let(:entry2)  { entry1.dup              }

        it_should_behave_like 'DataObjects::Schema::OrderedSet#initialize when entries are given and they contain duplicates'

      end

    end

  end
end
