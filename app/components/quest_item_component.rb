# typed: false
# frozen_string_literal: true

class QuestItemComponent < ViewComponent::Base
  delegate_missing_to :@quest
  with_collection_parameter :quest

  def initialize(quest:)
    super
    @quest = quest
  end
end
