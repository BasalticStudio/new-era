# typed: true
# frozen_string_literal: true

module Game
  class TutorialController < ApplicationController
    skip_before_action :tutorial_check

    def setup_name
      current_player.update!(player_params.permit(:name))
      redirect_to game_root_path
    end

    private

    def player_params
      params.require(:player)
    end
  end
end
