require 'spec_helper'
require 'data_objects/schema/database'

module DataObjects::Schema
  describe Database, '#uri' do

    subject { database.uri }

    let(:name)     { 'foo' }
    let(:uri)      { Addressable::URI.parse('mysql://localhost/do_schema_test') }
    let(:database) { Database.new(name, uri, []) }

    it { should == uri }

  end
end
