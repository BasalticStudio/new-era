# typed: true
# frozen_string_literal: true

module Admin
  module Data
    class MapsController < Admin::ApplicationController
      def index
        @maps = Map.all
      end
    end
  end
end
