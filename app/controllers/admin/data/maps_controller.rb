# typed: true
# frozen_string_literal: true

module Admin
  module Data
    class MapsController < Admin::ApplicationController
      def index
        @maps = Map.all
      end

      def show
        @map = Map.find(params[:id])
      end
    end
  end
end
