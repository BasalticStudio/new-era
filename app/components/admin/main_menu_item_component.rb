# typed: true
# frozen_string_literal: true

module Admin
  class MainMenuItemComponent < ViewComponent::Base
    SHARED_LINK_STYLE = %w[text-xs uppercase py-3 font-bold block].freeze

    def initialize(label:, link:, icon: 'tools')
      super
      @label = label
      @link = link
      @icon = icon
    end

    def active?
      request.path.start_with?(@link)
    end

    def link_style
      if active?
        %w[text-pink-500 hover:text-pink-600]
      else
        %w[text-slate-700 hover:text-slate-500]
      end
        .concat(SHARED_LINK_STYLE)
        .join(' ')
    end

    def icon_color
      return 'opacity-75' if active?

      'text-slate-300'
    end
  end
end
