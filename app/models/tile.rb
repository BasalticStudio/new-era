# typed: true
# frozen_string_literal: true

class Tile
  include ActiveModel::API
  include ActiveModel::Attributes

  attribute :x, :integer
  attribute :y, :integer
end
