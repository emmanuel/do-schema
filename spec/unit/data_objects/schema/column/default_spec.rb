require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column, '#default' do

    subject { column.default }

    let(:default) { 'foo' }
    let(:options) { { :default => default } }
    let(:column)  { Column.new('name', options) }

    it { should == default }

  end
end
