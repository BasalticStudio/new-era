# typed: true
# frozen_string_literal: true

module Admin
  module Table
    class RowComponent < ViewComponent::Base
      renders_many :cells, types: {
        head: 'Admin::Table::HeadComponent',
        data: 'Admin::Table::DataComponent'
      }
    end
  end
end
