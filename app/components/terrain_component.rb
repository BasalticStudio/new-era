# typed: true
# frozen_string_literal: true

class TerrainComponent < ViewComponent::Base
  def initialize(terrain:, area:)
    super
    @area = area
    @terrain = terrain
  end
end
