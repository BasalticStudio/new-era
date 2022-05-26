# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `flipper-active_support_cache_store` gem.
# Please instead update this file by running `bin/tapioca gem flipper-active_support_cache_store`.

# Simple class for turning a flipper_id into an actor that can be based
# to Flipper::Feature#enabled?.
module Flipper
  extend ::Flipper
  extend ::Forwardable

  def [](*args, &block); end
  def actor(*args, &block); end
  def actors(*args, &block); end
  def adapter(*args, &block); end
  def add(*args, &block); end
  def bool(*args, &block); end
  def boolean(*args, &block); end

  # Public: Returns Flipper::Configuration instance.
  def configuration; end

  # Public: Sets Flipper::Configuration instance.
  def configuration=(configuration); end

  # Public: Configure flipper.
  #
  #   Flipper.configure do |config|
  #     config.adapter { ... }
  #   end
  #
  # Yields Flipper::Configuration instance.
  #
  # @yield [configuration]
  def configure; end

  def disable(*args, &block); end
  def disable_actor(*args, &block); end
  def disable_group(*args, &block); end
  def disable_percentage_of_actors(*args, &block); end
  def disable_percentage_of_time(*args, &block); end
  def enable(*args, &block); end
  def enable_actor(*args, &block); end
  def enable_group(*args, &block); end
  def enable_percentage_of_actors(*args, &block); end
  def enable_percentage_of_time(*args, &block); end
  def enabled?(*args, &block); end
  def exist?(*args, &block); end
  def feature(*args, &block); end
  def features(*args, &block); end

  # Public: Fetches a group by name.
  #
  # name - The Symbol name of the group.
  #
  # Examples
  #
  #   Flipper.group(:admins)
  #
  # Returns Flipper::Group.
  def group(name); end

  # Public: Check if a group exists
  #
  # Returns boolean
  #
  # @return [Boolean]
  def group_exists?(name); end

  # Public: Returns a Set of symbols where each symbol is a registered
  # group name. If you just want the names, this is more efficient than doing
  # `Flipper.groups.map(&:name)`.
  def group_names; end

  # Public: Returns a Set of registered Types::Group instances.
  def groups; end

  # Internal: Registry of all groups_registry.
  def groups_registry; end

  # Internal: Change the groups_registry registry.
  def groups_registry=(registry); end

  def import(*args, &block); end

  # Public: Default per thread flipper instance if configured. You should not
  # need to use this directly as most of the Flipper::DSL methods are delegated
  # from Flipper module itself. Instead of doing Flipper.instance.enabled?(:search),
  # you can use Flipper.enabled?(:search) for the same result.
  #
  # Returns Flipper::DSL instance.
  def instance; end

  # Public: Set the flipper instance. It is most common to use the
  # Configuration#default to set this instance, but for things like the test
  # environment, this writer is actually useful.
  def instance=(flipper); end

  def memoize=(*args, &block); end
  def memoizing?(*args, &block); end

  # Public: Start here. Given an adapter returns a handy DSL to all the flipper
  # goodness. To see supported options, check out dsl.rb.
  def new(adapter, options = T.unsafe(nil)); end

  def percentage_of_actors(*args, &block); end
  def percentage_of_time(*args, &block); end
  def preload(*args, &block); end
  def preload_all(*args, &block); end

  # Public: Use this to register a group by name.
  #
  # name - The Symbol name of the group.
  # block - The block that should be used to determine if the group matches a
  #         given thing.
  #
  # Examples
  #
  #   Flipper.register(:admins) { |thing|
  #     thing.respond_to?(:admin?) && thing.admin?
  #   }
  #
  # Returns a Flipper::Group.
  # Raises Flipper::DuplicateGroup if the group is already registered.
  def register(name, &block); end

  def remove(*args, &block); end
  def sync(*args, &block); end
  def sync_secret(*args, &block); end
  def time(*args, &block); end

  # Public: Clears the group registry.
  #
  # Returns nothing.
  def unregister_groups; end
end

module Flipper::Adapters; end

# Public: Adapter that wraps another adapter with the ability to cache
# adapter calls in ActiveSupport::ActiveSupportCacheStore caches.
class Flipper::Adapters::ActiveSupportCacheStore
  include ::Flipper::Adapter
  extend ::Flipper::Adapter::ClassMethods

  # Public
  #
  # @return [ActiveSupportCacheStore] a new instance of ActiveSupportCacheStore
  def initialize(adapter, cache, expires_in: T.unsafe(nil), write_through: T.unsafe(nil)); end

  # Public
  def add(feature); end

  # Internal
  def cache; end

  # Public
  def clear(feature); end

  # Public
  def disable(feature, gate, thing); end

  # Public
  def enable(feature, gate, thing); end

  # Public
  def features; end

  # Public
  def get(feature); end

  def get_all; end
  def get_multi(features); end

  # Public: The name of the adapter.
  def name; end

  # Public
  def remove(feature); end

  private

  def key_for(key); end

  # Internal: Returns an array of the known feature keys.
  def read_feature_keys; end

  # Internal: Given an array of features, attempts to read through cache in
  # as few network calls as possible.
  def read_many_features(features); end

  class << self
    # Private
    def key_for(key); end
  end
end

Flipper::Adapters::ActiveSupportCacheStore::FeaturesKey = T.let(T.unsafe(nil), String)
Flipper::Adapters::ActiveSupportCacheStore::GetAllKey = T.let(T.unsafe(nil), String)
Flipper::Adapters::ActiveSupportCacheStore::Namespace = T.let(T.unsafe(nil), String)
Flipper::Adapters::ActiveSupportCacheStore::Version = T.let(T.unsafe(nil), String)

# Private: The namespace for all instrumented events.
Flipper::InstrumentationNamespace = T.let(T.unsafe(nil), Symbol)
