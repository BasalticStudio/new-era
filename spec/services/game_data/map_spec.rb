# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GameData::Map do
  subject(:map) { described_class.new([%w[id name], %w[1 萊恩島]]) }

  it { is_expected.to include(include({ 'id' => '1' })) }
  it { is_expected.to include(include({ 'name' => '萊恩島' })) }

  describe '#import' do
    subject(:import) { map.import }

    it { expect { import }.to change(Map, :count).by(1) }
  end
end
