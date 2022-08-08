# typed: false
# frozen_string_literal: true

if ENV.fetch('COVERAGE', false) || ENV.fetch('CI', false)
  require 'simplecov'
  require 'simplecov-cobertura'

  SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter if ENV.fetch('GITLAB_CI', false)

  SimpleCov.start 'rails' do
    add_filter 'vendor'
  end
end

require 'cucumber/rails'

ActionController::Base.allow_rescue = false
ActiveSupport::TestCase.file_fixture_path = Rails.root.join('features/support/files')
DatabaseRewinder.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation
