# typed: false
# frozen_string_literal: true

module Game
  class ApplicationController < ::ApplicationController
    before_action :authenticate_player!
    before_action :set_sentry_user
    before_action :tutorial_check

    private

    def set_sentry_user
      Sentry.set_user(current_player.slice(:id, :email))
    end

    def tutorial_check
      return if current_player.name.present?

      redirect_to game_tutorial_path
    end
  end
end
