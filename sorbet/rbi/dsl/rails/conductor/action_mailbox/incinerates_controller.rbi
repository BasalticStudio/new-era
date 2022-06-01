# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::ActionMailbox::IncineratesController`.
# Please instead update this file by running `bin/tapioca dsl Rails::Conductor::ActionMailbox::IncineratesController`.

class Rails::Conductor::ActionMailbox::IncineratesController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::DeviseHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
