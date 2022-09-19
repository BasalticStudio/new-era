# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.0.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'

gem 'sprockets-rails'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Common
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'

# Frontend
gem 'jsbundling-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails', '~> 2.0.0'
gem 'turbo-rails'
gem 'view_component'

# Worker
gem 'sidekiq'

# Features
gem 'flipper-active_record'
gem 'flipper-active_support_cache_store'
gem 'flipper-ui'

# Monitor
gem 'liveness'
gem 'sentry-rails'
gem 'sentry-ruby'

# Utils
gem 'activerecord-import'
gem 'config'
gem 'dry-rails', '~> 0.1'
gem 'google-apis-sheets_v4', '~> 0.17.0'
gem 'openbox'
gem 'sorbet-runtime'

group :development, :test do
  # Call 'byebug' anywhere in the code to
  # stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'code-scanning-rubocop', '~> 0.6.1'
  gem 'rubocop', '~> 1.35.1', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-sorbet', require: false

  gem 'sorbet'
  gem 'unparser', require: false

  gem 'bankai'
end

group :development do
  gem 'listen', '~> 3.3'
  # Access an interactive console on exception pages or
  # by calling 'console' anywhere in the code.
  gem 'debug', '>= 1.0.0'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in
  # the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'foreman'

  gem 'annotate', require: false
  gem 'bullet'
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  gem 'letter_opener'
  gem 'overcommit', require: false
  gem 'pry-rails'
  gem 'rack-mini-profiler', require: false
  gem 'spoom', require: false
  gem 'tapioca', require: false

  gem 'i18n-debug'

  gem 'boxing'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'

  gem 'database_rewinder'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec', require: false
  gem 'rspec_junit_formatter', require: false
  gem 'rspec-rails', require: false
  gem 'shoulda', require: false
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'simplecov-cobertura', require: false

  gem 'cucumber-rails', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'oj'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
