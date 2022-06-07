# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MapItemComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(map: map) }
  let(:map) { build(:map, name: '台北市') }

  before { render_inline(component) }

  it { is_expected.to have_text('台北市') }
  it { is_expected.to have_link('台北市') }
end
