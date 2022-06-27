# typed: true
# frozen_string_literal: true

class SpreadsheetService
  class << self
    def build(key)
      credential = Google::Auth::ServiceAccountCredentials.make_creds(
        json_key_io: CREDENTIAL_PATH.open,
        scope: Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY
      )
      service = Google::Apis::SheetsV4::SheetsService.new
      service.authorization = credential
      service.authorization.fetch_access_token!
      new(key, service: service)
    end
  end

  CREDENTIAL_PATH = Rails.root.join('config/credentials/spreadsheet-service_account.json')

  attr_reader :key

  def initialize(key, service:)
    @key = key
    @service = service
  end

  def execute(range)
    @service
      .get_spreadsheet_values(@key, range)
      .values
  end
end
