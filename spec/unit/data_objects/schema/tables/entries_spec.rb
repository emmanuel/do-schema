require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/entries_spec'

describe 'DataObjects::Schema::TableSet#entries' do

  subject { tables.entries }

  let(:tables) { set }

  context 'with no entries' do

    let(:set) { DataObjects::Schema::TableSet.new }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with no entries'

  end

  context 'with entries' do

    let(:set)   { DataObjects::Schema::TableSet.new([ table ]) }
    let(:table) { entry                                        }
    let(:entry) { DataObjects::Schema::Table.new('name')       }

    it_should_behave_like 'DataObjects::Schema::OrderedSet#entries with entries'

  end

end

