# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Ratel::Validator, type: :model do
  describe '.valid?' do
    subject { described_class.valid?(value) }

    before do
      Ratel::Reader.clear!
      allow(Ratel::Reader).to receive(:file_names).and_return(['spec/ratel/data/patterns.yml'])
    end

    context 'with valid value' do
      let(:value) { 'linqueta' }

      it { is_expected.to be_truthy }
    end

    context 'with invalid value' do
      let(:value) { 'cachorrao' }

      it { is_expected.to be_falsey }
    end
  end
end
