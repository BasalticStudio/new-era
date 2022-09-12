# typed: true
# frozen_string_literal: true

module ApplicationHelper
  def release_version
    "Version: newera@#{ENV.fetch('REVISION', 'DEV')}"
  end
end
