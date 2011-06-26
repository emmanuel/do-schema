require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/entries_spec'

module DataObjects::Schema
  describe ColumnSet, '#entries' do

    subject { columns.entries }

    let(:columns) { set }

    context 'with no entries' do

      let(:set) { ColumnSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with no entries'

    end

    context 'with entries' do

      let(:set)   { ColumnSet.new([ entry ]) }
      let(:entry) { Column.new('name', {})   }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with entries'

    end

  end
end
