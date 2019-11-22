# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Person, type: :model do
  describe 'validate!' do
    subject { described_class.new(name).validate! }

    before { allow(Ratel::Reader).to receive(:file_names).and_return(['spec/ratel/data/patterns.yml']) }

    context 'with valid name' do
      let(:name) { 'reputação' }

      it { is_expected.to be_truthy }
    end

    context 'with invalid name' do
      let(:name) { 'A puta é top' }

      it do
        expect { subject }.to raise_error(ActiveModel::ValidationError,
                                          'Validation failed: Name deve ser um valor válido')
      end
    end
  end
end
