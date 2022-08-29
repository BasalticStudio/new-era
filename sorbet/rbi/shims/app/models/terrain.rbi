# typed: true
# frozen_string_literal: true

class Terrain
  sig { returns(T::Array[Hash]) }
  def to_a; end

  sig { returns(Game::CoordinateService) }
  def coordinate_service; end
end
