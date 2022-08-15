# typed: true
# frozen_string_literal: true

class TileComponent < ViewComponent::Base
  with_collection_parameter :tile

  def initialize(tile:, tile_counter:)
    super
    @tile = tile
    @x, @y = calculate_position(tile_counter - 1)
  end

  private

  def calculate_position(index)
    [
      index % Terrain::MAX_WIDTH + 1,
      index / Terrain::MAX_WIDTH + 1
    ]
  end
end
