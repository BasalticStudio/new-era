# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SpreadsheetService do
  subject(:sheet) { described_class.new('1yWU43I9JPUEmxTlGjTsiAtqoOASUZ3-GGSBa2OwacgQ', service: service) }

  let(:service) { instance_spy(Google::Apis::SheetsV4::SheetsService) }

  describe '.build' do
    subject(:build) { described_class.build('1yWU43I9JPUEmxTlGjTsiAtqoOASUZ3-GGSBa2OwacgQ') }

    let(:credential) { instance_spy(Google::Auth::ServiceAccountCredentials) }

    before do
      allow(Google::Auth::ServiceAccountCredentials).to receive(:make_creds).and_return(credential)
    end

    it { is_expected.to be_a(described_class) }

    it 'is expected to fetch access token' do
      build
      expect(credential).to have_received(:fetch_access_token!)
    end
  end

  describe '#load' do
    subject { sheet.load('A1:B') }

    before do
      range = instance_double(Google::Apis::SheetsV4::ValueRange, values: [%w[id name], %w[1 萊恩島]])
      allow(service).to receive(:get_spreadsheet_values).with('1yWU43I9JPUEmxTlGjTsiAtqoOASUZ3-GGSBa2OwacgQ',
                                                              'A1:B').and_return(range)
    end

    it { is_expected.to include(%w[id name]) }
    it { is_expected.to include(%w[1 萊恩島]) }
  end
end
