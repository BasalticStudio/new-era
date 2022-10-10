# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::Table::RowComponent, type: :component do
  subject { page }

  let(:component) { described_class.new }

  before do
    render_inline(component) do |row|
      row.with_cell_head.with_content('ID')
      row.with_cell_data.with_content('Name')
    end
  end

  it { is_expected.to have_selector('th', text: 'ID') }
  it { is_expected.to have_selector('td', text: 'Name') }
end
