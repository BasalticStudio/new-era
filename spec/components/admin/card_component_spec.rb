# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::CardComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(title: 'Maps').with_content('Map Data List') }

  before { render_inline(component) }

  it { is_expected.to have_text('Maps') }
  it { is_expected.to have_text('Map Data List') }
end
