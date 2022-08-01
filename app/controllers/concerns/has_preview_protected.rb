# typed: false
# frozen_string_literal: true

module HasPreviewProtected
  extend ActiveSupport::Concern

  included do
    helper_method :preview?
  end

  def ensure_previewable!
    return if preview?

    render status: :not_found
  end

  def preview?
    Flipper.enabled?(:preview, current_player)
  end
end
