# typed: true
# frozen_string_literal: true

class AreaItemComponent < ViewComponent::Base
  delegate_missing_to :@area
  with_collection_parameter :area

  def initialize(area:)
    super
    @area = area
  end
end
