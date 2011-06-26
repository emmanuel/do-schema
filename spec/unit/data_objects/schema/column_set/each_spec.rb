require 'spec_helper'
require 'data_objects/schema/column'
require 'spec/unit/data_objects/schema/ordered_set/shared/each_spec'

describe 'DataObjects::Schema::ColumnSet' do

  subject { DataObjects::Schema::ColumnSet.new }

  it_should_behave_like 'DataObjects::Schema::OrderedSet'

end

describe 'DataObjects::Schema::ColumnSet#each' do

  subject { columns.each { |entry| yields << entry } }

  let(:columns) { set                                           }

  let(:set)     { DataObjects::Schema::ColumnSet.new([ entry ]) }
  let(:entry)   { DataObjects::Schema::Column.new('name', {})   }
  let(:yields)  { []                                            }

  it_should_behave_like 'DataObjects::Schema::OrderedSet#each'

end

