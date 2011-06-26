require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/length_spec'

module DataObjects::Schema
  describe ColumnSet, '#length' do

    subject { columns.length }

    context 'when no entry is present' do

      let(:columns) { ColumnSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when no entry is present'

    end

    context 'when 1 entry is present' do

      let(:columns) { ColumnSet.new([ entry ]) }

      let(:entry)   { Column.new('column', {}) }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when 1 entry is present'

    end

    context 'when more than 1 entry is present' do

      let(:columns) { ColumnSet.new(entries)    }

      let(:entries) { [entry1, entry2]          }

      let(:entry1)  { Column.new('column1', {}) }
      let(:entry2)  { Column.new('column2', {}) }

      let(:expected_length) { entries.length    }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#length when more than 1 entry is present'

    end

  end
end
