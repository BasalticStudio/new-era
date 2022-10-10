# typed: true
# frozen_string_literal: true

module Admin
  module Table
    class RowComponent < ViewComponent::Base
      renders_many :cells
    end
  end
end
