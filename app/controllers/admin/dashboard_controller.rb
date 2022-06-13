# typed: true
# frozen_string_literal: true

module Admin
  class DashboardController < ApplicationController
    def refresh_allowlist
      service = SpreadsheetService.build(Settings.register_allowlist.spreadsheet_key)
      RegisterAllowlist.new.write(service.load('A2:A'))
      redirect_to admin_root_path, notice: t('.allowlist_refreshed')
    end

    def refresh_game_data
      service = SpreadsheetService.build(Settings.game_data.spreadsheet_key)
      GameData::Map.new(service.load('Map!A1:B')).import

      redirect_to admin_root_path, notice: t('.game_data_refresh_enqueued')
    end
  end
end
