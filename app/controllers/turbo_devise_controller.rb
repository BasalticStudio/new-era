# typed: true
# frozen_string_literal: true

class TurboDeviseController < ApplicationController
  class Responder < ActionController::Responder
    def to_turbo_stream
      controller.render(options.merge(formats: :html))
    rescue ActionView::MissingTemplate => e
      raise e if get?
      return unprocessable_entity if unprocessable?

      redirect_to navigation_location
    end

    def unprocessable?
      has_errors? && default_action
    end

    def unprocessable_entity
      render rendering_options.merge(formats: :html,
                                     status: :unprocessable_entity)
    end
  end

  self.responder = Responder
  respond_to :html, :turbo_stream
end
