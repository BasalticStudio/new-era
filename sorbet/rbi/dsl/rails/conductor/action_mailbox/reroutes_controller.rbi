# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::ActionMailbox::ReroutesController`.
# Please instead update this file by running `bin/tapioca dsl Rails::Conductor::ActionMailbox::ReroutesController`.

class Rails::Conductor::ActionMailbox::ReroutesController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::Webpacker::Helper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
