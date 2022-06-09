# typed: true
# frozen_string_literal: true

class RegisterAllowlist
  include Enumerable

  CREDENTIAL_PATH = Rails.root.join('config/credentials/spreadsheet-service_account.json')

  def initialize(source = Settings.register_allowlist.path)
    @source = Pathname.new(source) if source
    @items = Set.new
  end

  def each(&block)
    reload
    @items.each(&block)
  end

  def register(*items)
    @items.merge(items)
  end

  def reload
    return unless @source&.exist?

    register(*@source.each_line.map(&:strip))
  end

  def refresh!
    authorize!
    @source.write(
      sheets
      .get_spreadsheet_values(Settings.register_allowlist.spreadsheet_key, 'A2:A')
      .values
      .flatten
      .join("\n")
    )
  end

  private

  def credential
    @credential ||= Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: CREDENTIAL_PATH.open,
      scope: Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY
    )
  end

  def sheets
    @sheets ||= Google::Apis::SheetsV4::SheetsService.new
  end

  def authorize!
    sheets.authorization = credential
    sheets.authorization.fetch_access_token!
  end
end
