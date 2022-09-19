# typed: true
# frozen_string_literal: true

module Admin
  class AlertComponent < ViewComponent::Base
    def initialize(type:, message:)
      super
      @type = type
      @message = message
    end

    def style
      'bg-emerald-500'
    end
  end
end
