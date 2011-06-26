require 'spec_helper'
require 'data_objects/schema/database'

describe 'DataObjects::Schema::Database#tables' do

  context 'when no tables were passed at construction time' do

    subject { database.tables }

    let(:name)     { 'foo' }
    let(:uri)      { mock(:uri) }

    let(:database) { DataObjects::Schema::Database.new(name, uri) }

    it { should be_instance_of(DataObjects::Schema::TableSet) }
    it { should == DataObjects::Schema::TableSet.new([]) }

  end

  context 'when an array was passed at construction time' do

    subject { database.tables }

    let(:name)     { 'foo' }
    let(:uri)      { mock(:uri) }

    let(:database) { DataObjects::Schema::Database.new(name, uri, []) }

    it { should be_instance_of(DataObjects::Schema::TableSet) }
    it { should == DataObjects::Schema::TableSet.new([]) }

  end

  context 'when a TableSet instance was passed at construction time' do

    subject { database.tables }

    let(:name)     { 'foo' }
    let(:uri)      { mock(:uri) }
    let(:tables)   { DataObjects::Schema::TableSet.new([]) }

    let(:database) { DataObjects::Schema::Database.new(name, uri, tables) }

    it { should be_instance_of(DataObjects::Schema::TableSet) }
    it { should == tables }

  end

end

