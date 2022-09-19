# typed: true
# frozen_string_literal: true

module Admin
  class MainMenuComponent < ViewComponent::Base
    renders_one :header
    renders_many :groups, 'Admin::MainMenuGroupComponent'
  end
end
