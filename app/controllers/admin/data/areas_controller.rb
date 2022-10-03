# typed: false
# frozen_string_literal: true

module Admin
  module Data
    class AreasController < Admin::ApplicationController
      def index
        @areas = Area.all
      end
    end
  end
end
