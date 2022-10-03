# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::ResourceTableComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(collection: Map.all, columns: %i[id name]) }

  before do
    create(:map, id: 1, name: '東方大陸')

    warden = instance_double(Warden::Manager)
    allow(warden).to receive(:send).with(:authenticate!, { scope: :admin_user }).and_return(true)
    request.env['warden'] = warden

    with_request_url '/admin/data/maps' do
      render_inline(component)
    end
  end

  it { is_expected.to have_text('Id') }
  it { is_expected.to have_text('Name') }
  it { is_expected.to have_text('1') }
  it { is_expected.to have_text('東方大陸') }
end
