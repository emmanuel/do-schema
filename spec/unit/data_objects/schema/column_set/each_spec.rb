require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/each_spec'

module DataObjects::Schema
  describe ColumnSet do

    subject { ColumnSet.new }

    it_should_behave_like 'DataObjects::Schema::OrderedSet'

  end

  describe ColumnSet, '#each' do

    subject { columns.each { |entry| yields << entry } }

    let(:columns) { set                      }

    let(:set)     { ColumnSet.new([ entry ]) }
    let(:entry)   { Column.new('name', {})   }
    let(:yields)  { []                       }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#each'

  end
end
