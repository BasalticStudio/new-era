# typed: true
# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include HasPreviewProtected
end
