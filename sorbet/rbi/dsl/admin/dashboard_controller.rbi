# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Admin::DashboardController`.
# Please instead update this file by running `bin/tapioca dsl Admin::DashboardController`.

class Admin::DashboardController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::PreviewHelper
    include ::DeviseHelper

    sig { returns(T.untyped) }
    def preview?; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
