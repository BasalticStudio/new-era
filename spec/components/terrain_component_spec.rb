# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TerrainComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(terrain: Terrain.new) }

  before { render_inline(component) }

  it { is_expected.to have_text('(1, 1)') }
  it { is_expected.to have_text('(25, 25)') }
end
