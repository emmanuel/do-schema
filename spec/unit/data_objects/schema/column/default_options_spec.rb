require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column, '#default_options' do

    subject { column.default_options }

    let(:column) { Column.new('name', {}) }
    let(:default_options) { { :required => true } }

    it { should == default_options }

  end

end
