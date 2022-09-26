# typed: true
# frozen_string_literal: true

module Admin
  class MainMenuGroupComponent < ViewComponent::Base
    def initialize(title:, routes: [])
      super
      @title = title
      @routes = routes
    end
  end
end
