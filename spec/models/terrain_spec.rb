# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Terrain do
  describe '.from' do
    subject { described_class.from(data) }

    let(:data) { '[{}]' }

    it { is_expected.to have_attributes(tiles: [{}]) }

    context 'when nil given' do
      let(:data) { nil }

      it { is_expected.to have_attributes(tiles: be_empty) }
    end

    context 'when empty string given' do
      let(:data) { '' }

      it { is_expected.to have_attributes(tiles: be_empty) }
    end

    context 'when an array given' do
      let(:data) { [{}] }

      it { is_expected.to have_attributes(tiles: [{}]) }
    end
  end

  it { is_expected.to include(be_a(Tile)) }
  it { is_expected.to include(have_attributes(x: 1, y: 1)) }
  it { is_expected.to include(have_attributes(x: 25, y: 25)) }
end
