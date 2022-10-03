# typed: true
# frozen_string_literal: true

module Admin
  module Table
    class HeaderComponent < ViewComponent::Base
      COLUMN_STYLE = 'px-6 align-middle border border-solid py-3 text-xs uppercase ' \
                     'border-l-0 border-r-0 whitespace-nowrap font-semibold text-left ' \
                     'bg-slate-50 text-slate-500 border-slate-100'

      def initialize(columns: [], action: false)
        super
        @columns = columns
        @action = action
      end

      def action?
        @action == true
      end

      def style
        COLUMN_STYLE
      end
    end
  end
end
