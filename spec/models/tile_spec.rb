# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tile do
  it { is_expected.to have_attributes(x: 0) }
  it { is_expected.to have_attributes(y: 0) }

  context 'when coordinate is 7,8' do
    subject { described_class.new(x: 7, y: 8) }

    it { is_expected.to have_attributes(x: 7) }
    it { is_expected.to have_attributes(y: 8) }
  end

  context 'when tile is NPC' do
    subject { described_class.new(x: 7, y: 8, type: Tile::TYPES[:npc]) }

    it { is_expected.to be_npc }
    it { is_expected.to be_moveable }
  end
end
