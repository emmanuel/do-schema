require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/include_spec'

describe 'DataObjects::Schema::ColumnSet#include?' do

  subject { columns.include?(column) }

  let(:columns) { set                                         }
  let(:column)  { entry                                       }
  let(:entry)   { DataObjects::Schema::Column.new('name', {}) }

  context 'when the entry is present' do

    let(:set) { DataObjects::Schema::ColumnSet.new([ entry ]) }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#include? when the entry is present'

  end

  context 'when the entry is not present' do

    let(:set) { DataObjects::Schema::ColumnSet.new }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#include? when the entry is not present'

  end

end

