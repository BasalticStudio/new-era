# typed: true
# frozen_string_literal: true

class MapItemComponent < ViewComponent::Base
  delegate_missing_to :@map
  with_collection_parameter :map

  def initialize(map:)
    super
    @map = map
  end
end
