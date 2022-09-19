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

    def index
      @mau = Player.where(last_sign_in_at: 30.days.ago..Time.zone.today).size
      @player_count = Player.all.size
    end

    def refresh_allowlist
      registrable_players = spreadsheet_service.values_from(Settings.register_allowlist.spreadsheet_key, range: 'A2:A')
      register_allowlist.write(registrable_players)
      redirect_to admin_root_path, notice: t('.allowlist_refreshed')
    end

    def refresh_game_data
      Settings
        .game_data.import
        .map { |config| ImportConfig.new(config) }
        .each { |config| import_data(config) }

      redirect_to admin_root_path, notice: t('.game_data_refresh_enqueued')
    end

    private

    def import_data(config)
      entities = spreadsheet_service
                 .entities_from(Settings.game_data.spreadsheet_key, range: config.source) do |attrs|
        config.entity.new(attrs.slice('id', *config.fields))
      end
      config.repository.import! entities, on_duplicate_key_update: config.fields
    end
  end
end
