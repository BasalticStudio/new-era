# typed: false
# frozen_string_literal: true

module Game
  class AreasController < ApplicationController
    def show
      @area = Area.find(params[:id])
    end
  end
end
