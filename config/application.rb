# typed: true
# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

require 'debug/open_nonstop' if defined?(Rails::Server) && Rails.env.development?

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewEra
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.i18n.default_locale = :'zh-TW'
    config.time_zone = 'Asia/Taipei'
    # config.eager_load_paths << Rails.root.join("extras")
    config.active_job.queue_adapter = :sidekiq
  end
end
