# typed: true
# frozen_string_literal: true

module Admin
  class FooterComponent < ViewComponent::Base
    def initialize(version:)
      super
      @version = version
    end
  end
end
