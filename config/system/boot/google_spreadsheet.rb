# typed: false
# frozen_string_literal: true

NewEra::Container.register_provider(:google_spreadsheet) do
  prepare do
    register('google.spreadsheet') do
      service = Google::Apis::SheetsV4::SheetsService.new
      service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
        json_key_io: Rails.root.join('config/credentials/spreadsheet-service_account.json'),
        scope: Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY
      )

      service.authorization.fetch_access_token!
      service
    end
  end
end
