# typed: true
# frozen_string_literal: true

module Game
  class MapsController < ApplicationController
    def index
      @maps = Map.all
    end

    def show
      @map = Map.find(params[:id])
    end
  end
end
