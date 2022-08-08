# typed: true
# frozen_string_literal: true

class TileComponent < ViewComponent::Base
  WIDTH = 25
  HEIGHT = 25

  with_collection_parameter :tile

  def initialize(tile:, tile_counter:)
    super
    @tile = tile
    @x, @y = calculate_position(tile_counter - 1)
  end

  private

  def calculate_position(index)
    [
      index % WIDTH + 1,
      index / WIDTH + 1
    ]
  end
end
