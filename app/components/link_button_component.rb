# typed: true
# frozen_string_literal: true

class LinkButtonComponent < ViewComponent::Base
  attr_reader :label, :target

  def initialize(label:, target:, enabled: true)
    super
    @label = label
    @target = target
    @enabled = enabled
  end

  def linked?
    @enabled
  end
end
