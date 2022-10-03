# typed: true
# frozen_string_literal: true

module Admin
  module Table
    class RowComponent < ViewComponent::Base
      def initialize(values: [])
        super
        @values = values
      end
    end
  end
end
