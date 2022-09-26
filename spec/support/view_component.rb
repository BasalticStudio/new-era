# typed: true
# frozen_string_literal: true

require 'view_component/test_helpers'

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
module ViewComponent
  module TestHelpers
    def with_request_url(path)
      old_request_path_info = request.path_info
      old_request_path_parameters = request.path_parameters
      old_request_query_parameters = request.query_parameters
      old_request_query_string = request.query_string
      old_controller = defined?(@controller) && @controller

      path, query = path.split('?', 2)
      request.path_info = path
      request.path_parameters = Rails.application.routes.recognize_path_with_request(request, path, {})
      request.set_header('action_dispatch.request.query_parameters', Rack::Utils.parse_nested_query(query))
      request.set_header(Rack::QUERY_STRING, query)
      yield
    ensure
      request.path_info = old_request_path_info
      request.path_parameters = old_request_path_parameters
      request.set_header('action_dispatch.request.query_parameters', old_request_query_parameters)
      request.set_header(Rack::QUERY_STRING, old_request_query_string)
      @controller = old_controller
    end
  end
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

RSpec.configure do |config|
  config.include ViewComponent::TestHelpers, type: :component
  config.include Capybara::RSpecMatchers, type: :component
end
