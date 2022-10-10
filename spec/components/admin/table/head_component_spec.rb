# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::Table::HeadComponent, type: :component do
  subject { page }

  let(:component) { described_class.new.with_content('ID') }

  before { render_inline(component) }

  it { is_expected.to have_selector('th', text: 'ID') }
end
