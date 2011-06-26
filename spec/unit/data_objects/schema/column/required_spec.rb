require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column, '#required?' do

    let(:name)    { 'name' }
    let(:column)  { Column.new(name, options) }

    subject { column.required? }

    context 'when not specified at construction time' do

      let(:options) { Hash.new }

      it { should be(true) }

    end

    context 'when :required => true was passed at construction time' do

      let(:options) { { :required => true } }

      it { should be(true) }

    end

    context 'when :required => false was passed at construction time' do

      let(:options) { { :required => false } }

      it { should be(false) }

    end

  end
end
