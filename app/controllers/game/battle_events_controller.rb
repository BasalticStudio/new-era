# typed: true
# frozen_string_literal: true

module Game
  class BattleEventsController < ApplicationController
    before_action :ensure_previewable!

    def create
      flash[:battle] = t('.applied_damage', amount: 100)
      redirect_to game_battle_path(params[:battle_id])
    end
  end
end
