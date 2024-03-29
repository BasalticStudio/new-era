# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::MainMenuComponent, type: :component do
  subject { page }

  let(:component) { described_class.new }
  let(:admin) { create(:admin_user) }

  context 'when header given' do
    before do
      render_inline(component) do |c|
        c.with_header { 'NewEra Dashboard' }
      end
    end

    it { is_expected.to have_text('NewEra Dashboard') }
  end
end
