# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::TableComponent, type: :component do
  subject { page }

  let(:component) { described_class.new }

  before do
    render_inline(component) do |c|
      c.with_header(columns: %w[ID Name])
      c.with_row(values: %w[1 東方大陸])
    end
  end

  it { is_expected.to have_text('Id') }
  it { is_expected.to have_text('Name') }
  it { is_expected.to have_text('1') }
  it { is_expected.to have_text('東方大陸') }
end
