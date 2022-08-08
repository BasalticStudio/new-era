# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GameDataImportService do
  subject(:service) { described_class.new(Map, conflict_keys: %w[name]) }

  describe '#execute' do
    subject(:execute) { service.execute([%w[id name], %w[1 萊恩島]]) }

    it { is_expected.to have_attributes(ids: include(1)) }
    it { expect { execute }.to change(Map, :count).by(1) }

    context 'when import jsonb' do
      subject(:execute) { service.execute([%w[id map_id terrain], %W{1 #{map.id} [{}]}]) }

      let(:map) { create(:map) }
      let(:service) { described_class.new(Area, conflict_keys: %w[map_id terrain]) }

      before { create(:area, id: 1, terrain: '') }

      it { expect { execute }.to change { Area.find(1).terrain }.to([{}]) }
    end
  end
end
