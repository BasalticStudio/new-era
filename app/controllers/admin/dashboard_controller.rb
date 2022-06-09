# typed: false
# frozen_string_literal: true

module Admin
  class DashboardController < ApplicationController
    def refresh_allowlist
      redirect_to admin_root_path, notice: t('.allowlist_refreshed')
    end
  end
end
