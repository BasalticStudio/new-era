# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::Table::RowComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(values: %w[ID Name]) }

  before { render_inline(component) }

  it { is_expected.to have_text('ID') }
  it { is_expected.to have_text('Name') }
end
