# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Ratel::Reader, type: :model do
  describe '.read' do
    subject { described_class.read }

    before { allow(Dir).to receive(:[]).and_return(files) }

    context 'without files' do
      let(:files) { [] }

      it { is_expected.to be_empty }
    end

    context 'with files' do
      let(:files) { ['spec/ratel/data/patterns.yml'] }

      it { is_expected.to eq(%w[abençoado cachorrao puta]) }
    end
  end
end
