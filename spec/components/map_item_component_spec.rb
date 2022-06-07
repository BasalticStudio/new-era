# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MapItemComponent, type: :component do
  subject(:component) { described_class.new(map: map) }

  let(:map) { build(:map, name: '台北市') }

  context 'when rendered' do
    subject { render_inline(component).to_html }

    it { is_expected.to include('台北市') }
  end
end
