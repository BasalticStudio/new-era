# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::MainMenuGroupComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(title: 'Game Data') }

  before { render_inline(component) }

  it { is_expected.to have_text('Game Data') }
end
