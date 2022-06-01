# typed: false
# frozen_string_literal: true

require 'cucumber/rails'

if ENV.fetch('COVERAGE', false) || ENV.fetch('CI', false)
  require 'simplecov'
  require 'simplecov-cobertura'

  SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter if ENV.fetch('GITLAB_CI', false)

  SimpleCov.start 'rails' do
    add_filter 'vendor'
  end
end

ActionController::Base.allow_rescue = false
DatabaseRewinder.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation
