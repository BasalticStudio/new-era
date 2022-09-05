# typed: true
# frozen_string_literal: true

class SpreadsheetService
  T.unsafe(self).include NewEra::Deps['google.spreadsheet']

  def values_from(spreadsheet_id, range:)
    spreadsheet
      .get_spreadsheet_values(spreadsheet_id, range)
      .values
  end
end
