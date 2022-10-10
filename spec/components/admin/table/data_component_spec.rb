# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::Table::DataComponent, type: :component do
  subject { page }

  let(:component) { described_class.new.with_content('東方大陸') }

  before { render_inline(component) }

  it { is_expected.to have_selector('td', text: '東方大陸') }
end
