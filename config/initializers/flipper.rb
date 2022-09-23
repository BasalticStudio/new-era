# typed: true
# frozen_string_literal: true

require 'active_support/cache'
require 'flipper/adapters/active_support_cache_store'

Flipper.configure do |config|
  config.adapter do
    Flipper::Adapters::ActiveSupportCacheStore.new(
      Flipper::Adapters::Memory.new,
      Rails.cache
    )
  end
end
