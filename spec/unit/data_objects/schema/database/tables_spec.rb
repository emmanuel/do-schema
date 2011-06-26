require 'spec_helper'
require 'data_objects/schema/database'

module DataObjects::Schema
  describe Database, '#tables' do

    context 'when no tables were passed at construction time' do

      subject { database.tables }

      let(:name)     { 'foo' }
      let(:uri)      { mock(:uri) }

      let(:database) { Database.new(name, uri) }

      it { should be_instance_of(TableSet) }
      it { should == TableSet.new([]) }

    end

    context 'when an array was passed at construction time' do

      subject { database.tables }

      let(:name)     { 'foo' }
      let(:uri)      { mock(:uri) }

      let(:database) { Database.new(name, uri, []) }

      it { should be_instance_of(TableSet) }
      it { should == TableSet.new([]) }

    end

    context 'when a TableSet instance was passed at construction time' do

      subject { database.tables }

      let(:name)     { 'foo' }
      let(:uri)      { mock(:uri) }
      let(:tables)   { TableSet.new([]) }

      let(:database) { Database.new(name, uri, tables) }

      it { should be_instance_of(TableSet) }
      it { should == tables }

    end

  end
end
