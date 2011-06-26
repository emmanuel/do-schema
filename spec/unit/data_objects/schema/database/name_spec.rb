require 'spec_helper'
require 'data_objects/schema/database'

describe 'DataObjects::Schema::Database#name' do

  subject { database.name }

  let(:name)     { 'foo' }
  let(:uri)      { mock(:uri) }
  let(:database) { DataObjects::Schema::Database.new(name, uri, []) }

  it { should == name }

end

