# typed: true
# frozen_string_literal: true

module Admin
  module Data
    class MapsController < Admin::ApplicationController
      include Admin::DataView

      def resource_class
        Map
      end
    end
  end
end
