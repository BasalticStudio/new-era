# typed: true
# frozen_string_literal: true

module Admin
  module Data
    class AreasController < Admin::ApplicationController
      def index
        @areas = Area.all
      end

      def show
        @area = Area.find(params[:id])
      end
    end
  end
end
