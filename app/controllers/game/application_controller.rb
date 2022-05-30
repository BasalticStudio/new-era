# typed: false
# frozen_string_literal: true

module Game
  class ApplicationController < ::ApplicationController
    before_action :authenticate_player!
    before_action :set_sentry_user

    private

    def set_sentry_user
      Sentry.set_user(current_player.slice(:id, :email))
    end
  end
end
