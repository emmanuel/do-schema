require 'spec_helper'
require 'do-schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/entries_spec'

describe 'DataObjects::Schema::ColumnSet#entries' do

  subject { columns.entries }

  let(:columns) { set }

  context 'with no entries' do

    let(:set) { DataObjects::Schema::ColumnSet.new }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with no entries'

  end

  context 'with entries' do

    let(:set)   { DataObjects::Schema::ColumnSet.new([ entry ]) }
    let(:entry) { DataObjects::Schema::Column.new('name', {})   }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with entries'

  end

end

