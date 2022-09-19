# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::AlertComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(type: :notice, message: 'Game data import started') }

  before { render_inline(component) }

  it { is_expected.to have_text('Game data import started') }
end
