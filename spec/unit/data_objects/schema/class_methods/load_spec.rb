require 'spec_helper'
require 'do-schema'

module DataObjects::Schema
  describe '.load' do

    subject { DataObjects::Schema.load(uri) }

    let(:uri) { mock(:uri) }

    it { pending { expect { subject }.to_not raise_error(NotImplementedError) } }

  end
end
