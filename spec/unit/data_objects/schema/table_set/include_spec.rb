require 'spec_helper'
require 'data_objects/schema/table'
require 'spec/unit/data_objects/schema/ordered_set/shared/include_spec'

module DataObjects::Schema
  describe TableSet, '#include?' do

    subject { tables.include?(table) }

    let(:tables) { set                    }
    let(:table)  { entry                  }
    let(:entry)  { Table.new('name')      }

    context 'when the entry is present' do

      let(:set) { TableSet.new([ entry ]) }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#include? when the entry is present'

    end

    context 'when the entry is not present' do

      let(:set) { TableSet.new }

      it_should_behave_like 'DataObjects::Schema::OrderedSet#include? when the entry is not present'

    end

  end
end
