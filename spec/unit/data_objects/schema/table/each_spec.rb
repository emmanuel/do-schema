require 'spec_helper'
require 'data_objects/schema/table'

module DataObjects::Schema
  describe Table do

    subject { Table.new('name', []) }

    it { should be_kind_of(Enumerable) }

    it 'case matches Enumerable' do
      (Enumerable === subject).should be(true)
    end
  end

  describe Table, '#each' do

    subject { table.each { |column| yields << column } }

    let(:table)  { Table.new('name', [column]) }
    let(:column) { Column.new('name', {})      }
    let(:yields) { [ ]                         }

    it { should equal(table) }

    it 'yields each column' do
      expect { subject }.to change { yields.dup }.from([]).to([column])
    end
  end
end
