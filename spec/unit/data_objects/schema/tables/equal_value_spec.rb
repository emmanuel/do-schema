require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema::Specs

  # Used to test duck typing behavior
  class TablesDuck
    attr_reader :entries

    def initialize(tables = [])
      @entries = Set.new
    end
  end
end

describe 'DataObjects::Schema::TableSet#==' do

  subject { tables == other }

  let(:original_table)  { DataObjects::Schema::Table.new('name')                }
  let(:tables)          { DataObjects::Schema::TableSet.new([ original_table ]) }

  context 'with the same tables' do

    let(:other) { tables }

    it { should be(true) }

    it 'is symmetric' do
      should == (other == tables)
    end
  end

  context 'with equivalent tables' do

    let(:other) { tables.dup }

    it { should be(true) }

    it 'is symmetric' do
      should == (other == tables)
    end
  end

  # TODO This probably needs more thought
  context 'with a class that quacks like TableSet and is equivalent otherwise' do

    let(:other) { DataObjects::Schema::Specs::TablesDuck.new([ original_table ]) }

    it { should be(false) }

    it 'is symmetric' do
      should == (other == tables)
    end
  end

  context 'with a subclass that is equivalent otherwise' do

    let(:other) { Class.new(DataObjects::Schema::TableSet).new([ original_table ]) }

    it { should be(true) }

    it 'is symmetric' do
      should == (other == tables)
    end
  end


  context 'with both containing no tables' do

    let(:tables) { DataObjects::Schema::TableSet.new }
    let(:other)  { DataObjects::Schema::TableSet.new }

    it { should be(true) }

    it 'is symmetric' do
      should == (other == tables)
    end
  end

  context 'with different tables' do

    let(:different_table) { DataObjects::Schema::Table.new('different')            }
    let(:other)           { DataObjects::Schema::TableSet.new([ different_table ]) }

    it { should be(false) }

    it 'is symmetric' do
      should == (other == tables)
    end

  end

end

