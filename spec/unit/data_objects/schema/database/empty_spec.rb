require 'spec_helper'
require 'data_objects/schema/database'

module DataObjects::Schema
  describe Database, '#empty?' do

    context 'with no tables in it' do

      subject { database.empty? }

      let(:name)     { 'name' }
      let(:uri)      { mock(:uri) }

      let(:database) { Database.new(name, uri, []) }

      it { should be(true) }

    end

    context 'with tables in it' do

      subject { database.empty? }

      let(:name)     { 'name' }
      let(:uri)      { mock(:uri) }
      let(:tables)   { [Table.new('name', [])] }

      let(:database) { Database.new(name, uri, tables) }

      it { should be(false) }

    end

  end
end
