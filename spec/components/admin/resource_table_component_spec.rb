# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::ResourceTableComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(collection: Map.all, columns: %i[id name]) }

  before do
    create(:map, id: 1, name: '東方大陸')

    render_inline(component)
  end

  it { is_expected.to have_text('Id') }
  it { is_expected.to have_text('Name') }
  it { is_expected.to have_text('1') }
  it { is_expected.to have_text('東方大陸') }
end
