# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LinkButtonComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(label: '開始遊戲', target: 'https://example.com') }

  before { render_inline(component) }

  it { is_expected.to have_link('開始遊戲', href: 'https://example.com') }
  it { is_expected.to have_text('開始遊戲') }

  context 'when link disabled' do
    let(:component) { described_class.new(label: '開始遊戲', target: 'https://example.com', enabled: false) }

    it { is_expected.not_to have_link('開始遊戲', href: 'https://example.com') }
    it { is_expected.to have_text('開始遊戲') }
    it { is_expected.to have_css('.cursor-not-allowed') }
  end
end
