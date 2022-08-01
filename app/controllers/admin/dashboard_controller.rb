# typed: false
# frozen_string_literal: true

module Admin
  class DashboardController < ApplicationController
    REPOSITORY_MAP = {
      'Map' => Map,
      'Area' => Area
    }.freeze

    def refresh_allowlist
      service = SpreadsheetService.build(Settings.register_allowlist.spreadsheet_key)
      RegisterAllowlist.new.write(service.execute('A2:A'))
      redirect_to admin_root_path, notice: t('.allowlist_refreshed')
    end

    def refresh_game_data
      data_load_service = SpreadsheetService.build(Settings.game_data.spreadsheet_key)

      Settings.game_data.import.each do |config|
        import_service = GameDataImportService.new(REPOSITORY_MAP[config['repository']],
                                                   conflict_keys: config['fields'])
        import_service.execute(data_load_service.execute(config['source']))
      end

      redirect_to admin_root_path, notice: t('.game_data_refresh_enqueued')
    end
  end
end
