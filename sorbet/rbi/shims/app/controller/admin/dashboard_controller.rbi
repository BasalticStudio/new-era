# typed: false

module Admin
  class DashboardController < ApplicationController
    sig { returns(RegisterAllowlist) }
    def register_allowlist; end
  end
end
