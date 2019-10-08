# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Ratel::Reader, type: :model do
  describe '.read' do
    subject { described_class.read }

    before do
      described_class.clear!
      allow(Dir).to receive(:[]).and_return(files)
    end

    context 'without files' do
      let(:files) { [] }

      it { is_expected.to be_empty }
    end

    context 'with files' do
      let(:files) { ['spec/ratel/data/patterns.yml'] }

      it { is_expected.to eq(%w[abençoado cachorrao]) }
    end
  end
end
