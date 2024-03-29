# typed: true
# frozen_string_literal: true

if ENV['RACK_MINI_PROFILER'].to_i.positive?
  require 'rack-mini-profiler'

  Rack::MiniProfilerRails.initialize!(Rails.application)
end
