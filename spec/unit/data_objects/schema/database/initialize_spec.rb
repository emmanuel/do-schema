require 'spec_helper'
require 'data_objects/schema/database'

module DataObjects::Schema
  describe Database, '#initialize' do

    let(:name) { 'foo' }
    let(:uri)  { 'foo' }

    shared_examples_for 'calling DataObjects::Schema::Database#initialize' do

      its(:name)   { should == name }
      its(:uri)    { should == uri }
      its(:tables) { should be_kind_of(TableSet) }

    end

    context 'when no tables are given' do

      subject { Database.new(name, uri) }

      it_should_behave_like 'calling DataObjects::Schema::Database#initialize'

      its(:tables) { should be_empty }

    end

    context 'when an empty set of tables are given' do

      subject { Database.new(name, uri, []) }

      it_should_behave_like 'calling DataObjects::Schema::Database#initialize'

      its(:tables) { should be_empty }

    end

    context 'when a non empty set of tables are given' do

      subject { Database.new(name, uri, tables) }

      let(:tables) { [table1, table2] }
      let(:table1) { Table.new('table1') }
      let(:table2) { Table.new('table2') }

      let(:expected_tables) { TableSet.new(tables) }

      it_should_behave_like 'calling DataObjects::Schema::Database#initialize'

      its(:tables) { should == expected_tables }

    end

  end
end
