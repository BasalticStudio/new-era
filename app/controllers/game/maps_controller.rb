# typed: true
# frozen_string_literal: true

module Game
  class MapsController < ApplicationController
    def index
      @maps = Map.all
    end
  end
end
