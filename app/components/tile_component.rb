# typed: true
# frozen_string_literal: true

class TileComponent < ViewComponent::Base
  SHARED_STYLE = %w(relative after:content-[''] after:block after:mt-full).freeze

  with_collection_parameter :tile

  delegate :x, :y, :moveable?, to: :@tile

  def initialize(tile:)
    super
    @tile = tile
  end

  def tile_style
    styles = case @tile.type
             when 0 then %w[bg-gray-400 hover:bg-gray-200]
             when 1 then %w[bg-stone-500]
             when 2 then %w[bg-red-500 hover:bg-red-700]
             else []
             end

    styles.concat(SHARED_STYLE).join(' ')
  end
end
