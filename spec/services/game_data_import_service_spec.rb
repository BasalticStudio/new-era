# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GameDataImportService do
  subject(:service) { described_class.new(Map, conflict_keys: %i[name]) }

  describe '#execute' do
    subject(:execute) { service.execute([%w[id name], %w[1 萊恩島]]) }

    it { is_expected.to have_attributes(ids: include(1)) }
    it { expect { execute }.to change(Map, :count).by(1) }
  end
end
