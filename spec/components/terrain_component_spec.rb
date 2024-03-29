# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TerrainComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(terrain: Terrain.new) }

  before do
    with_request_url '/game/areas/1' do
      render_inline(component)
    end
  end

  it { is_expected.to have_text('(1, 1)') }
  it { is_expected.to have_text('(25, 25)') }
end
