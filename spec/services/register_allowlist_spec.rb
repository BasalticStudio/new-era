# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RegisterAllowlist do
  subject(:list) { described_class.instance }

  describe '.include?' do
    it { is_expected.not_to include('player@example.com') }

    context 'when player is added' do
      before do
        list.register('player@example.com')
      end

      it { is_expected.to include('player@example.com') }
    end
  end
end
