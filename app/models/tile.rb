# typed: true
# frozen_string_literal: true

class Tile
  include ActiveModel::API
  include ActiveModel::Attributes

  attribute :x, :integer, default: 0
  attribute :y, :integer, default: 0
end
