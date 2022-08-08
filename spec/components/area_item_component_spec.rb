# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AreaItemComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(area: area) }
  let(:area) { create(:area, name: '板橋區') }

  before { render_inline(component) }

  it { is_expected.to have_text('板橋區') }
end
