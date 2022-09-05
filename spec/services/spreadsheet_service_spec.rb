# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SpreadsheetService do
  subject(:sheet) { described_class.new }

  let(:service) { instance_spy(Google::Apis::SheetsV4::SheetsService) }

  before { NewEra::Container.stub('google.spreadsheet', service) }

  after { NewEra::Container.unstub('google.spreadsheet') }

  describe '#values_from' do
    subject { sheet.values_from('1yWU43I9JPUEmxTlGjTsiAtqoOASUZ3-GGSBa2OwacgQ', range: 'A1:B') }

    before do
      range = instance_double(Google::Apis::SheetsV4::ValueRange, values: [%w[id name], %w[1 萊恩島]])
      allow(service).to receive(:get_spreadsheet_values)
        .with('1yWU43I9JPUEmxTlGjTsiAtqoOASUZ3-GGSBa2OwacgQ', 'A1:B')
        .and_return(range)
    end

    it { is_expected.to include(%w[id name]) }
    it { is_expected.to include(%w[1 萊恩島]) }
  end
end
