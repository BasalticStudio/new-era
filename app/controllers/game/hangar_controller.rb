# typed: false
# frozen_string_literal: true

module Game
  class HangarController < ApplicationController
    before_action :authenticate_player!
  end
end
