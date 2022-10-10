# typed: true
# frozen_string_literal: true

module Admin
  module Data
    class AreasController < Admin::ApplicationController
      include Admin::DataView

      def resource_class
        Area
      end
    end
  end
end
