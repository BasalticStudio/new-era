# typed: true
# frozen_string_literal: true

module Admin
  class DashboardController < ApplicationController
    def refresh_allowlist
      service = SpreadsheetService.build(Settings.register_allowlist.spreadsheet_key)
      RegisterAllowlist.new.write(service.execute('A2:A'))
      redirect_to admin_root_path, notice: t('.allowlist_refreshed')
    end

    def refresh_game_data
      data_load_service = SpreadsheetService.build(Settings.game_data.spreadsheet_key)
      map_import_service = GameDataImportService.new(Map, conflict_keys: %i[name])
      map_import_service.execute(data_load_service.execute('Map!A1:B'))

      redirect_to admin_root_path, notice: t('.game_data_refresh_enqueued')
    end
  end
end
