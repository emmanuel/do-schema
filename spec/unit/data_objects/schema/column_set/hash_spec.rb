require 'spec_helper'
require 'data_objects/schema/column'

module DataObjects::Schema
  describe ColumnSet, '#hash' do

    subject { columns.hash }

    let(:column)   { Column.new('name', {})    }
    let(:columns)  { ColumnSet.new([ column ]) }

    it { should be_kind_of(::Integer) }

    it { should == columns.entries.hash }

  end
end
