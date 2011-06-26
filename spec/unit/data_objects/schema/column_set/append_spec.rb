require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/append_spec'

module DataObjects::Schema
  describe ColumnSet, '#<<' do

    subject { columns << entry2 }

    let(:columns) { set }

    let(:set)     { ColumnSet.new([ entry1 ]) }
    let(:entry1)  { Column.new('column1', {}) }

    context 'when appending a not yet included column' do

      let(:entry2) { Column.new('column2', {}) }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending a not yet included entry'

    end

    context 'when appending an already included column' do

      let(:entry2)  { entry1.dup }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending an already included entry'

    end

    context 'when appending a not-yet included column with the same name as an already included column' do

      let(:entry2)  { Column.new(entry1.name, :default => "test") }

      # TODO: refuse to append additional columns with name collisions
      it_should_behave_like 'DataObjects::Schema::OrderedSet#<< when appending an already included entry'

    end

  end
end
