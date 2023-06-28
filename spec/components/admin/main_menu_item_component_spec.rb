# typed: false
# frozen_string_literal: true

require 'rails_helper'
require 'debug'

RSpec.describe Admin::MainMenuItemComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(label: 'Game Map', link: '/admin') }
  let(:admin) { create(:admin_user) }

  before do
    sign_in admin
    with_request_url '/' do
      render_inline(component)
    end
  end

  it { is_expected.to have_link('Game Map') }
  it { is_expected.to have_selector('.text-slate-700') }

  context 'when menu item actived' do
    before do
      with_request_url '/admin' do
        render_inline(component)
      end
    end

    it { is_expected.to have_selector('.text-pink-500') }
  end
end
