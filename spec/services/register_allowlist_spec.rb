# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RegisterAllowlist do
  subject(:list) { described_class.new }

  context 'when allowlist source exists' do
    subject { described_class.new(source.path) }

    let(:source) { Tempfile.new('allowlist') }

    before do
      source.write("player@example.com\nplayer2@example.com")
      source.rewind
    end

    after { source.unlink }

    it { is_expected.to include('player@example.com') }
    it { is_expected.to include('player2@example.com') }
  end

  describe '#include?' do
    it { is_expected.not_to include('player@example.com') }

    context 'when player is added' do
      before do
        list.register('player@example.com')
      end

      it { is_expected.to include('player@example.com') }
    end
  end

  describe '#refresh!' do
    subject(:refresh) { list.refresh! }

    let(:list) { described_class.new(source.path) }
    let(:source) { Tempfile.new('allowlist') }

    before do
      sheets = instance_spy(Google::Apis::SheetsV4::SheetsService)
      allow(sheets).to receive(:authorization).and_return(instance_spy(Google::Auth::ServiceAccountCredentials))
      allow(sheets).to receive(:get_spreadsheet_values).and_return({ rows: ['player@example.com'] })
      allow(Google::Apis::SheetsV4::SheetsService).to receive(:new).and_return(sheets)
    end

    after { source.unlink }

    it 'is expected to have player@example.com' do
      refresh
      source.rewind
      expect(source.read).to include('player@example.com')
    end
  end
end
