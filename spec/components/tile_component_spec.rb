# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TileComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(tile: {}, tile_counter: 1) }

  before { render_inline(component) }

  it { is_expected.to have_text('(1, 1)') }
end