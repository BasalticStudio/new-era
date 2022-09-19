# typed: true
# frozen_string_literal: true

module Admin
  class MainMenuGroupComponent < ViewComponent::Base
    def initialize(title:)
      super
      @title = title
    end
  end
end
