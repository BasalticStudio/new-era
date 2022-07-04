# typed: true
# frozen_string_literal: true

module Game
  class TutorialController < ApplicationController
    skip_before_action :tutorial_check
  end
end
