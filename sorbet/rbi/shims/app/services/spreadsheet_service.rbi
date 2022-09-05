# typed: true
# frozen_string_literal: true

class SpreadsheetService
  sig { returns(Google::Apis::SheetsV4::SheetsService) }
  def spreadsheet; end
end
