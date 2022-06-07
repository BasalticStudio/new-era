# typed: false
class ApplicationController < ActionController::Base
  sig { returns(Player) }
  def current_player; end
end
