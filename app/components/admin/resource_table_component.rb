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

    def build_link_for(resource)
      [
        *request.path.split('/')[0..-2].compact_blank.map(&:to_sym),
        resource
      ]
    end
  end
end
