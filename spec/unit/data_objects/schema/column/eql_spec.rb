require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe Column, '#eql?' do

    subject { column.eql?(other) }

    let(:name)             { 'foo'                                    }
    let(:original_options) { { :default => 'foo', :required => true } }
    let(:column)           { Column.new(name, original_options)       }

    context 'with the same column' do

      let(:other) { column }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(column)
      end
    end

    context 'with an equivalent column' do

      let(:other) { column.dup }

      it { should be(true) }

      it 'is symmetric' do
        should == other.eql?(column)
      end
    end

    context 'with a column subclass that is otherwise equal' do

      let(:other) { Class.new(Column).new(name, original_options) }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(column)
      end
    end

    context 'with a different name and the same options' do

      let(:other) { Column.new('different name', original_options) }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(column)
      end
    end

    context 'with a different name, a different default value and the same required status' do

      let(:other)   { Column.new('different name', options)    }
      let(:options) { { :default => 'bar', :required => true } }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(column)
      end
    end

    context 'with a different name, a different default value and a different required status' do

      let(:other)   { Column.new('different name', options)     }
      let(:options) { { :default => 'bar', :required => false } }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(column)
      end
    end

    context 'with the same name, a different default value and the same require status' do

      let(:other)   { Column.new(name, options)                }
      let(:options) { { :default => 'bar', :required => true } }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(column)
      end

    end

    context 'with the same name, the same default value and a different required status' do

      let(:other)   { Column.new(name,options)                  }
      let(:options) { { :default => 'foo', :required => false } }

      it { should be(false) }

      it 'is symmetric' do
        should == other.eql?(column)
      end

    end

  end
end
