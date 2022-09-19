# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::FooterComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(version: 'rspec@dev') }

  before { render_inline(component) }

  it { is_expected.to have_text('rspec@dev') }
end
