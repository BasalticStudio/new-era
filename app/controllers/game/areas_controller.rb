# typed: true
# frozen_string_literal: true

module Game
  class AreasController < ApplicationController
    before_action :ensure_previewable!

    def show
      @area = Area.find(params[:id])
    end
  end
end
