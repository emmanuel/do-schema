require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/merge_spec'

module DataObjects::Schema
  describe ColumnSet, '#merge' do

    context 'when merging two empty sets' do

      subject { columns.merge([]) }

      let(:columns) { set           }

      let(:set)     { ColumnSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#merge when merging two empty sets'

    end

    context 'when merging a set with already present entries' do

      subject { columns.merge([entry]) }

      let(:columns) { set                      }

      let(:set)     { ColumnSet.new([ entry ]) }
      let(:entry)   { Column.new('name', {})   }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#merge when merging a set with already present entries'

    end

    context 'when merging a set with not yet present entries' do

      subject { columns.merge([entry2]) }

      let(:columns) { set                       }

      let(:set)     { ColumnSet.new([ entry1 ]) }
      let(:entry1)  { Column.new('entry1', {})  }
      let(:entry2)  { Column.new('entry2', {})  }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#merge when merging a set with not yet present entries'

    end

  end
end
