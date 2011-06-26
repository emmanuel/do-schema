require 'spec_helper'
require 'data_objects/schema/database'

module DataObjects::Schema
  describe Database, '#name' do

    subject { database.name }

    let(:name)     { 'foo' }
    let(:uri)      { mock(:uri) }
    let(:database) { Database.new(name, uri, []) }

    it { should == name }

  end
end
