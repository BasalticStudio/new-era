# typed: true
# frozen_string_literal: true

class TileComponent < ViewComponent::Base
  with_collection_parameter :tile

  delegate :x, :y, to: :@tile

  def initialize(tile:)
    super
    @tile = tile
  end
end
