# typed: false
# frozen_string_literal: true

class TurboDeviseController < ApplicationController
  class Responder < ActionController::Responder
    def to_turbo_stream
      controller.render(options.merge(formats: :html))
    rescue ActionView::MissingTemplate => e
      raise e if get?
      return render_error if has_errors? && default_action

      redirect_to navigation_location
    end

    def render_error
      render rendering_options.merge(formats: :html,
                                     status: :unprocessable_entity)
    end
  end

  self.responder = Responder
  respond_to :html, :turbo_stream
end
