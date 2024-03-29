# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `flipper-active_support_cache_store` gem.
# Please instead update this file by running `bin/tapioca gem flipper-active_support_cache_store`.

# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#4
module Flipper
  # source://forwardable/1.3.3/forwardable.rb#231
  def [](*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def actor(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def actors(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def adapter(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def add(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def bool(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def boolean(*args, **_arg1, &block); end

  # source://flipper/0.28.0/lib/flipper.rb#28
  def configuration; end

  # source://flipper/0.28.0/lib/flipper.rb#33
  def configuration=(configuration); end

  # source://flipper/0.28.0/lib/flipper.rb#23
  def configure; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def disable(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def disable_actor(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def disable_group(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def disable_percentage_of_actors(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def disable_percentage_of_time(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def enable(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def enable_actor(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def enable_group(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def enable_percentage_of_actors(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def enable_percentage_of_time(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def enabled?(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def exist?(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def export(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def feature(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def features(*args, **_arg1, &block); end

  # source://flipper/0.28.0/lib/flipper.rb#128
  def group(name); end

  # source://flipper/0.28.0/lib/flipper.rb#115
  def group_exists?(name); end

  # source://flipper/0.28.0/lib/flipper.rb#101
  def group_names; end

  # source://flipper/0.28.0/lib/flipper.rb#94
  def groups; end

  # source://flipper/0.28.0/lib/flipper.rb#133
  def groups_registry; end

  # source://flipper/0.28.0/lib/flipper.rb#138
  def groups_registry=(registry); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def import(*args, **_arg1, &block); end

  # source://flipper/0.28.0/lib/flipper.rb#45
  def instance; end

  # source://flipper/0.28.0/lib/flipper.rb#52
  def instance=(flipper); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def memoize=(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def memoizing?(*args, **_arg1, &block); end

  # source://flipper/0.28.0/lib/flipper.rb#12
  def new(adapter, options = T.unsafe(nil)); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def percentage_of_actors(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def percentage_of_time(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def preload(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def preload_all(*args, **_arg1, &block); end

  # source://flipper/0.28.0/lib/flipper.rb#85
  def register(name, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def remove(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def sync(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def sync_secret(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def time(*args, **_arg1, &block); end

  # source://flipper/0.28.0/lib/flipper.rb#108
  def unregister_groups; end
end

# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#5
module Flipper::Adapters; end

# Public: Adapter that wraps another adapter with the ability to cache
# adapter calls in ActiveSupport::ActiveSupportCacheStore caches.
#
# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#9
class Flipper::Adapters::ActiveSupportCacheStore
  include ::Flipper::Adapter
  extend ::Flipper::Adapter::ClassMethods

  # Public
  #
  # @return [ActiveSupportCacheStore] a new instance of ActiveSupportCacheStore
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#29
  def initialize(adapter, cache, expires_in: T.unsafe(nil), write_through: T.unsafe(nil)); end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#44
  def add(feature); end

  # Internal
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#23
  def cache; end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#65
  def clear(feature); end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#110
  def disable(feature, gate, thing); end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#97
  def enable(feature, gate, thing); end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#39
  def features; end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#72
  def get(feature); end

  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#82
  def get_all; end

  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#78
  def get_multi(features); end

  # Public: The name of the adapter.
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#26
  def name; end

  # Public
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#51
  def remove(feature); end

  private

  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#124
  def key_for(key); end

  # Internal: Returns an array of the known feature keys.
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#129
  def read_feature_keys; end

  # Internal: Given an array of features, attempts to read through cache in
  # as few network calls as possible.
  #
  # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#135
  def read_many_features(features); end

  class << self
    # Private
    #
    # source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#18
    def key_for(key); end
  end
end

# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#14
Flipper::Adapters::ActiveSupportCacheStore::FeaturesKey = T.let(T.unsafe(nil), String)

# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#15
Flipper::Adapters::ActiveSupportCacheStore::GetAllKey = T.let(T.unsafe(nil), String)

# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#13
Flipper::Adapters::ActiveSupportCacheStore::Namespace = T.let(T.unsafe(nil), String)

# source://flipper-active_support_cache_store//lib/flipper/adapters/active_support_cache_store.rb#12
Flipper::Adapters::ActiveSupportCacheStore::Version = T.let(T.unsafe(nil), String)
