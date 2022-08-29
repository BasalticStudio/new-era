# typed: true
# frozen_string_literal: true

class TerrainComponent < ViewComponent::Base
  def initialize(terrain:)
    super
    @terrain = terrain
  end
end
