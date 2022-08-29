# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TileComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(tile: Tile.new(x: 1, y: 1)) }

  before do
    with_request_url '/game/areas/1' do
      render_inline(component)
    end
  end

  it { is_expected.to have_text('(1, 1)') }

  context 'when type is Wall (1)' do
    let(:component) { described_class.new(tile: Tile.new(x: 1, y: 1, type: 1)) }

    it { is_expected.to have_css('.bg-stone-500') }
  end
end
