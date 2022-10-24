# typed: true
# frozen_string_literal: true

module Game
  class BattlesController < ApplicationController
    before_action :ensure_previewable!
  end
end
