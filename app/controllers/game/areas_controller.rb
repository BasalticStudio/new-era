# typed: true
# frozen_string_literal: true

module Game
  class AreasController < ApplicationController
    before_action :ensure_previewable!

    def show
      @area = Area.find(params[:id])
      redirect_to game_battle_path(@area) if current_tile&.npc?
    end

    private

    def current_tile
      return if params[:x].blank?
      return if params[:y].blank?

      x, y = params.values_at(:x, :y).map(&:to_i)
      @area.terrain.tile(x: x, y: y)
    end
  end
end
