# typed: false
# frozen_string_literal: true

module Admin
  module DataView
    extend ActiveSupport::Concern

    included do
      helper_method :resource_class
    end

    def resource_class
      raise NotImplementedError
    end

    def index
      @collection = resource_class.all
    end

    def show
      @resource = resource_class.find(params[:id])
    end
  end
end
