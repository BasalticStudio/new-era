# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::MetricsCardComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(title: 'Players', value: 10, icon: 'fa-users') }

  before { render_inline(component) }

  it { is_expected.to have_text('Players') }
  it { is_expected.to have_text('10') }
  it { is_expected.to have_selector('.far.fa-users') }
end
