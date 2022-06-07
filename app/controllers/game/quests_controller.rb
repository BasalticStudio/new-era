# typed: true
# frozen_string_literal: true

module Game
  class QuestsController < ApplicationController
    def index
      @quests = current_player.quests
    end
  end
end
