require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column::String, '#initialize' do

    let(:name) { 'foo' }

    subject { Column::String.new(name, options) }

    context 'when an empty hash of options is given' do

      let(:default_options) { { :required => true} }
      let(:options)         { Hash.new }

      it_should_behave_like 'calling DataObjects::Schema::Column#initialize'

      its(:default) { should be(nil)            }

      it { should be_required }

      its(:length) { should be(Column::String::DEFAULT_LENGTH) }

    end

    context 'when the given options are the same as the default options' do

      let(:default_options) { { :required => true, :length => Column::String::DEFAULT_LENGTH } }
      let(:options)         { { :required => true, :length => Column::String::DEFAULT_LENGTH } }

      it_should_behave_like 'calling DataObjects::Schema::Column#initialize'

      its(:default) { should be(nil)            }

      it { should be_required }

      its(:length) { should be(Column::String::DEFAULT_LENGTH) }

    end

    context 'when the given options differ form the default options' do

      let(:default_options) { { :default => 'foo', :required => true } }
      let(:options)         { { :default => 'foo', :required => false, :length => 10 } }

      it_should_behave_like 'calling DataObjects::Schema::Column#initialize'

      its(:default) { should == 'foo'   }

      it { should_not be_required }

      its(:length) { should be(10) }

    end

  end
end
