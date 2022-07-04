# typed: true
# frozen_string_literal: true

module Game
  class TutorialController < ApplicationController
    skip_before_action :tutorial_check

    def setup_name
      current_player.update(params.require(:player).permit(:name))
      redirect_to game_root_path
    end
  end
end
