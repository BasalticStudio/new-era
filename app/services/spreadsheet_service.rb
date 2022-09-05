# typed: true
# frozen_string_literal: true

class SpreadsheetService
  T.unsafe(self).include NewEra::Deps['google.spreadsheet']

  def values_from(spreadsheet_id, range:)
    spreadsheet
      .get_spreadsheet_values(spreadsheet_id, range)
      .values
  end

  def entities_from(spreadsheet_id, range:, &block)
    header, *rows = values_from(spreadsheet_id, range: range)
    factory = block || ->(entity) { entity }
    rows.map { |row| factory.call(header.zip(row).to_h) }
  end
end
