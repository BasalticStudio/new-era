# typed: true
# frozen_string_literal: true

class LinkButtonComponent < ViewComponent::Base
  BASE_STYLE = %w[inline-block px-4 py-2 m-2 text-white bg-blue-500].freeze
  attr_reader :label, :target

  def initialize(label:, target:, enabled: true, method: :get)
    super
    @label = label
    @target = target
    @enabled = enabled
    @mehtod = method
  end

  def style
    if linked?
      BASE_STYLE
    else
      BASE_STYLE.dup.concat(%w[cursor-not-allowed]).uniq
    end.join(' ')
  end

  def linked?
    @enabled
  end

  def data
    return if @method == :get

    { turbo_method: @mehtod }
  end
end
