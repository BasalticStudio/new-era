# typed: false
# frozen_string_literal: true

NewEra::Container.register_provider(:google_spreadsheet) do
  prepare do
    service = Google::Apis::SheetsV4::SheetsService.new
    service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: Rails.root.join('config/credentials/spreadsheet-service_account.json'),
      scope: Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY
    )

    register('google.spreadsheet', service)
  end

  start do
    container['google.spreadsheet'].authorization.fetch_access_token!
  end
end
