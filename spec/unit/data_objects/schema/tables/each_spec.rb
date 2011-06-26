require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/each_spec'

describe 'DataObjects::Schema::TableSet' do

  subject { DataObjects::Schema::TableSet.new }

  it_should_behave_like 'DataObjects::Schema::OrderedSet'

end

describe 'DataObjects::Schema::TableSet#each' do

  subject { tables.each { |entry| yields << entry } }

  let(:tables) { set                                          }

  let(:set)    { DataObjects::Schema::TableSet.new([ table ]) }
  let(:table)  { entry                                        }
  let(:entry)  { DataObjects::Schema::Table.new('name')       }
  let(:yields) { []                                           }

  it_should_behave_like 'DataObjects::Schema::OrderedSet#each'

end

