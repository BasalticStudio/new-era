# typed: true
# frozen_string_literal: true

class Terrain
  class << self
    def from(data)
      new(
        case data
        when String then JSON.parse(data)
        when Array then data
        else
          []
        end
      )
    rescue JSON::ParserError, TypeError
      new
    end
  end

  T.unsafe(self).include NewEra::Deps['game.coordinate_service']
  include Enumerable

  attr_reader :tiles

  MAX_WIDTH = 25
  MAX_HEIGHT = 25

  TILE_SIZE = MAX_WIDTH * MAX_HEIGHT

  def initialize(tiles = nil, **args)
    super(**args)
    @tiles = tiles || []
  end

  def each(&block)
    return enum_for(:each) unless block

    TILE_SIZE.times do |index|
      attributes = @tiles[index] || {}
      x, y = coordinate_service.index_to_coord(index: index, width: MAX_WIDTH)
      yield Tile.new(attributes.merge('x' => x, 'y' => y).slice(*Tile.attribute_names))
    end
  end

  alias to_ary to_a

  def each_row(&block)
    return enum_for(:each_row) unless block

    each_slice(MAX_WIDTH, &block)
  end

  def tile(x:, y:) # rubocop:disable Naming/MethodParameterName
    index = coordinate_service.coord_to_index(x: x, y: y, width: MAX_WIDTH)
    attributes = @tiles[index] || {}
    Tile.new(attributes.merge('x' => y, 'y' => y).slice(*Tile.attribute_names))
  end
end
