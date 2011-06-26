require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe Table, '#name' do

    subject { table.name }

    let(:name)  { 'foo' }
    let(:table) { Table.new(name) }

    it { should == name }

  end
end
