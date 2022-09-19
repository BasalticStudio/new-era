# typed: true
# frozen_string_literal: true

module Admin
  class MetricsCardComponent < ViewComponent::Base
    def initialize(title:, value: 0, icon: 'fa-chart-bar')
      super
      @title = title
      @value = value
      @icon = icon
    end
  end
end
