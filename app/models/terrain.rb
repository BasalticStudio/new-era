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

  include Enumerable

  attr_reader :tiles

  MAX_WIDTH = 25
  MAX_HEIGHT = 25

  TILE_SIZE = MAX_WIDTH * MAX_HEIGHT

  def initialize(tiles = nil)
    @tiles = tiles || []
  end

  def each(&block)
    return enum_for(:each) unless block

    TILE_SIZE.times do |index|
      attributes = @tiles[index] || {}
      x = index % MAX_WIDTH + 1
      y = index / MAX_WIDTH + 1
      yield Tile.new(attributes.merge('x' => x, 'y' => y))
    end
  end

  alias to_ary to_a
end
