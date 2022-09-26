# typed: true
# frozen_string_literal: true

module Admin
  class MainMenuComponent < ViewComponent::Base
    renders_one :header
    renders_many :groups, 'Admin::MainMenuGroupComponent'

    def routes
      @routes ||=
        all_routes
        .select { |controller, _action| controller.starts_with?('admin/') }
        .map { |controller, action| [controller.gsub(%r{^admin/}, ''), action] }
    end

    def resources_with_index_route
      routes.select { |_resource, route| route == 'index' }.map(&:first).uniq
    end

    private

    def all_routes
      Rails.application.routes.routes.map do |route|
        route.defaults.values_at(:controller, :action).map(&:to_s)
      end
    end
  end
end
