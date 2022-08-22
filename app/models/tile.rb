# typed: true
# frozen_string_literal: true

class Tile
  include ActiveModel::API
  include ActiveModel::Attributes

  TYPES = {
    none: 0,
    wall: 1,
    npc: 2
  }.freeze

  attribute :x, :integer, default: 0
  attribute :y, :integer, default: 0
  attribute :type, :integer, default: 0

  def moveable?
    type != TYPES[:wall]
  end
end
