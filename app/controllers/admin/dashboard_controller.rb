# typed: false
# frozen_string_literal: true

module Admin
  class DashboardController < ApplicationController
    T.unsafe(self).include NewEra::Deps[
      'register_allowlist',
      'spreadsheet_service'
    ]

    rescue_from ActiveRecord::RecordInvalid do |e|
      Sentry.capture_exception(e)

      redirect_to admin_root_path, notice: t('.game_data_refresh_failed')
    end

    REPOSITORY_MAP = {
      'Map' => Map,
      'Area' => Area
    }.freeze

    def refresh_allowlist
      registrable_players = spreadsheet_service.values_from(Settings.register_allowlist.spreadsheet_key, range: 'A2:A')
      register_allowlist.write(registrable_players)
      redirect_to admin_root_path, notice: t('.allowlist_refreshed')
    end

    def refresh_game_data
      Settings.game_data.import.each do |config|
        import_service = GameDataImportService.new(REPOSITORY_MAP[config['repository']],
                                                   conflict_keys: config['fields'])
        rows = spreadsheet_service.values_from(Settings.game_data.spreadsheet_key, range: config['source'])
        import_service.execute(rows)
      end

      redirect_to admin_root_path, notice: t('.game_data_refresh_enqueued')
    end
  end
end
