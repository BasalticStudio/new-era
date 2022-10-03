# typed: true
# frozen_string_literal: true

module Admin
  class ResourceTableComponent < ViewComponent::Base
    def initialize(collection:, columns:)
      super
      @collection = collection
      @columns = columns
    end

    def column_names
      @columns.map do |column|
        @collection.human_attribute_name(column)
      end
    end
  end
end
