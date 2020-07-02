# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Ratel::Validator, type: :model do
  describe '.valid?' do
    subject { described_class.invalid?(value) }

    before { allow(Ratel::Reader).to receive(:file_names).and_return(['spec/ratel/data/patterns.yml']) }

    context 'with valid value' do
      let(:value) { 'linqueta' }

      it { is_expected.to be_nil }
    end

    context 'with invalid value' do
      let(:value) { 'cachorrao' }

      it { is_expected.to eq value.to_s }
    end
  end
end
