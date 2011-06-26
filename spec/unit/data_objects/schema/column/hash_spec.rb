require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column, '#hash' do

    subject { column.hash }

    let(:name)    { 'name' }
    let(:options) { { :default => 'foo', :required => true } }
    let(:column)  { Column.new(name, options) }

    it { should be_kind_of(::Integer) }

    it { should == Column.hash ^ column.name.hash }

  end
end
