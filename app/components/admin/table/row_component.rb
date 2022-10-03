# typed: true
# frozen_string_literal: true

module Admin
  module Table
    class RowComponent < ViewComponent::Base
      def initialize(columns: [], action: false)
        super
        @columns = columns
        @action = action
      end

      def action?
        @action == true
      end
    end
  end
end
