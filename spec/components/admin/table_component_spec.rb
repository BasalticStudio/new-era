# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::TableComponent, type: :component do
  subject { page }

  let(:component) { described_class.new }

  before do
    render_inline(component) do |c|
      c.with_header do |head|
        head.with_cell.with_content('ID')
        head.with_cell.with_content('Name')
      end
      c.with_row do |row|
        row.with_cell.with_content(1)
        row.with_cell.with_content('東方大陸')
      end
    end
  end

  it { is_expected.to have_text('ID') }
  it { is_expected.to have_text('Name') }
  it { is_expected.to have_selector('td', text: '1') }
  it { is_expected.to have_selector('td', text: '東方大陸') }
end
