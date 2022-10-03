# typed: true
# frozen_string_literal: true

module Admin
  class TableComponent < ViewComponent::Base
    renders_one :header, 'Admin::Table::HeaderComponent'
    renders_many :rows, 'Admin::Table::RowComponent'
  end
end
