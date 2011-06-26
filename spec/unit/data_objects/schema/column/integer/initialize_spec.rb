require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column::Integer, '#initialize' do

    let(:name) { 'foo' }

    subject { Column::Integer.new(name, options) }

    context 'when an empty hash of options is given' do

      let(:default_options) { { :required => true} }
      let(:options)         { Hash.new }

      it_should_behave_like 'calling DataObjects::Schema::Column#initialize'

      its(:default) { should be(nil)            }

      it { should be_required }

      its(:min) { should be(Column::Integer::DEFAULT_MIN) }
      its(:max) { should be(Column::Integer::DEFAULT_MAX) }

    end

    context 'when the given options are the same as the default options' do

      let(:default_options) { { :required => true, :min => Column::Integer::DEFAULT_MIN, :max => Column::Integer::DEFAULT_MAX } }
      let(:options)         { { :required => true, :min => Column::Integer::DEFAULT_MIN, :max => Column::Integer::DEFAULT_MAX } }

      it_should_behave_like 'calling DataObjects::Schema::Column#initialize'

      its(:default) { should be(nil)            }

      it { should be_required }

      its(:min) { should be(Column::Integer::DEFAULT_MIN) }
      its(:max) { should be(Column::Integer::DEFAULT_MAX) }

    end

    context 'when the given options differ form the default options' do

      let(:default_options) { { :default => 'foo', :required => true } }
      let(:options)         { { :default => 'foo', :required => false, :min => 1, :max => 5 } }

      it_should_behave_like 'calling DataObjects::Schema::Column#initialize'

      its(:default) { should == 'foo'   }

      it { should_not be_required }

      its(:min) { should be(1) }

      its(:max) { should be(5) }

    end

  end
end
