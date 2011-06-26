require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column, '#name' do

    subject { column.name }

    let(:name)   { 'foo' }
    let(:column) { Column.new(name, {}) }

    it { should == name }

  end
end
