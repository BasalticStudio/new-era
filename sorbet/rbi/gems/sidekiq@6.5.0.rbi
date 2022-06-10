# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sidekiq` gem.
# Please instead update this file by running `bin/tapioca gem sidekiq`.

# Use `Sidekiq.transactional_push!` in your sidekiq.rb initializer
module Sidekiq
  class << self
    def [](key); end
    def []=(key, val); end

    # How frequently Redis should be checked by a random Sidekiq process for
    # scheduled and retriable jobs. Each individual process will take turns by
    # waiting some multiple of this value.
    #
    # See sidekiq/scheduled.rb for an in-depth explanation of this value
    def average_scheduled_poll_interval=(interval); end

    # @yield [@client_chain]
    def client_middleware; end

    # config.concurrency = 5
    def concurrency=(val); end

    # Configuration for Sidekiq client, use like:
    #
    #   Sidekiq.configure_client do |config|
    #     config.redis = { size: 1, url: 'redis://myhost:8877/0' }
    #   end
    #
    # @yield [_self]
    # @yieldparam _self [Sidekiq] the object that the method was called on
    def configure_client; end

    # Configuration for Sidekiq server, use like:
    #
    #   Sidekiq.configure_server do |config|
    #     config.server_middleware do |chain|
    #       chain.add MyServerHook
    #     end
    #   end
    #
    # @yield [_self]
    # @yieldparam _self [Sidekiq] the object that the method was called on
    def configure_server; end

    # Death handlers are called when all retries for a job have been exhausted and
    # the job dies.  It's the notification to your application
    # that this job will not succeed without manual intervention.
    #
    # Sidekiq.configure_server do |config|
    #   config.death_handlers << ->(job, ex) do
    #   end
    # end
    def death_handlers; end

    # Private APIs
    def default_error_handler(ex, ctx); end

    def default_job_options; end
    def default_job_options=(hash); end
    def default_server_middleware; end

    # deprecated
    def default_worker_options(*args, &block); end

    # deprecated
    def default_worker_options=(*args, &block); end

    def dump_json(object); end

    # @return [Boolean]
    def ent?; end

    # Register a proc to handle any error which occurs within the Sidekiq process.
    #
    #   Sidekiq.configure_server do |config|
    #     config.error_handlers << proc {|ex,ctx_hash| MyErrorService.notify(ex, ctx_hash) }
    #   end
    #
    # The default error handler logs errors to Sidekiq.logger.
    def error_handlers; end

    def fetch(*args, &block); end
    def handle_exception(ex, ctx = T.unsafe(nil)); end
    def load_json(string); end
    def log_formatter; end
    def log_formatter=(log_formatter); end
    def logger; end
    def logger=(logger); end
    def merge!(hash); end

    # Register a block to run at a point in the Sidekiq lifecycle.
    # :startup, :quiet or :shutdown are valid events.
    #
    #   Sidekiq.configure_server do |config|
    #     config.on(:shutdown) do
    #       puts "Goodbye cruel world!"
    #     end
    #   end
    #
    # @raise [ArgumentError]
    def on(event, &block); end

    def options; end
    def options=(opts); end

    # @return [Boolean]
    def pro?; end

    # config.queues = %w( high default low )                 # strict
    # config.queues = %w( high,3 default,2 low,1 )           # weighted
    # config.queues = %w( feature1,1 feature2,1 feature3,1 ) # random
    #
    # With weighted priority, queue will be checked first (weight / total) of the time.
    # high will be checked first (3/6) or 50% of the time.
    # I'd recommend setting weights between 1-10. Weights in the hundreds or thousands
    # are ridiculous and unnecessarily expensive. You can get random queue ordering
    # by explicitly setting all weights to 1.
    def queues=(val); end

    # @raise [ArgumentError]
    def redis; end

    def redis=(hash); end
    def redis_info; end
    def redis_pool; end

    # @return [Boolean]
    def server?; end

    # @yield [@server_chain]
    def server_middleware; end

    def strict_args!(mode = T.unsafe(nil)); end
    def transactional_push!; end
  end
end

class Sidekiq::Client
  include ::Sidekiq::JobUtil

  # Sidekiq::Client normally uses the default Redis pool but you may
  # pass a custom ConnectionPool if you want to shard your
  # Sidekiq jobs across several Redis instances (for scalability
  # reasons, e.g.)
  #
  #   Sidekiq::Client.new(ConnectionPool.new { Redis.new })
  #
  # Generally this is only needed for very large Sidekiq installs processing
  # thousands of jobs per second.  I don't recommend sharding unless you
  # cannot scale any other way (e.g. splitting your app into smaller apps).
  #
  # @return [Client] a new instance of Client
  def initialize(redis_pool = T.unsafe(nil)); end

  # Define client-side middleware:
  #
  #   client = Sidekiq::Client.new
  #   client.middleware do |chain|
  #     chain.use MyClientMiddleware
  #   end
  #   client.push('class' => 'SomeJob', 'args' => [1,2,3])
  #
  # All client instances default to the globally-defined
  # Sidekiq.client_middleware but you can change as necessary.
  def middleware(&block); end

  # The main method used to push a job to Redis.  Accepts a number of options:
  #
  #   queue - the named queue to use, default 'default'
  #   class - the job class to call, required
  #   args - an array of simple arguments to the perform method, must be JSON-serializable
  #   at - timestamp to schedule the job (optional), must be Numeric (e.g. Time.now.to_f)
  #   retry - whether to retry this job if it fails, default true or an integer number of retries
  #   backtrace - whether to save any error backtrace, default false
  #
  # If class is set to the class name, the jobs' options will be based on Sidekiq's default
  # job options. Otherwise, they will be based on the job class's options.
  #
  # Any options valid for a job class's sidekiq_options are also available here.
  #
  # All options must be strings, not symbols.  NB: because we are serializing to JSON, all
  # symbols in 'args' will be converted to strings.  Note that +backtrace: true+ can take quite a bit of
  # space in Redis; a large volume of failing jobs can start Redis swapping if you aren't careful.
  #
  # Returns a unique Job ID.  If middleware stops the job, nil will be returned instead.
  #
  # Example:
  #   push('queue' => 'my_queue', 'class' => MyJob, 'args' => ['foo', 1, :bat => 'bar'])
  def push(item); end

  # Push a large number of jobs to Redis. This method cuts out the redis
  # network round trip latency.  I wouldn't recommend pushing more than
  # 1000 per call but YMMV based on network quality, size of job args, etc.
  # A large number of jobs can cause a bit of Redis command processing latency.
  #
  # Takes the same arguments as #push except that args is expected to be
  # an Array of Arrays.  All other keys are duplicated for each job.  Each job
  # is run through the client middleware pipeline and each job gets its own Job ID
  # as normal.
  #
  # Returns an array of the of pushed jobs' jids.  The number of jobs pushed can be less
  # than the number given if the middleware stopped processing for one or more jobs.
  #
  # @raise [ArgumentError]
  def push_bulk(items); end

  # Returns the value of attribute redis_pool.
  def redis_pool; end

  # Sets the attribute redis_pool
  #
  # @param value the value to set the attribute redis_pool to.
  def redis_pool=(_arg0); end

  private

  def atomic_push(conn, payloads); end
  def raw_push(payloads); end

  class << self
    # Resque compatibility helpers.  Note all helpers
    # should go through Sidekiq::Job#client_push.
    #
    # Example usage:
    #   Sidekiq::Client.enqueue(MyJob, 'foo', 1, :bat => 'bar')
    #
    # Messages are enqueued to the 'default' queue.
    def enqueue(klass, *args); end

    # Example usage:
    #   Sidekiq::Client.enqueue_in(3.minutes, MyJob, 'foo', 1, :bat => 'bar')
    def enqueue_in(interval, klass, *args); end

    # Example usage:
    #   Sidekiq::Client.enqueue_to(:queue_name, MyJob, 'foo', 1, :bat => 'bar')
    def enqueue_to(queue, klass, *args); end

    # Example usage:
    #   Sidekiq::Client.enqueue_to_in(:queue_name, 3.minutes, MyJob, 'foo', 1, :bat => 'bar')
    def enqueue_to_in(queue, interval, klass, *args); end

    def push(item); end
    def push_bulk(items); end

    # Allows sharding of jobs across any number of Redis instances.  All jobs
    # defined within the block will use the given Redis connection pool.
    #
    #   pool = ConnectionPool.new { Redis.new }
    #   Sidekiq::Client.via(pool) do
    #     SomeJob.perform_async(1,2,3)
    #     SomeOtherJob.perform_async(1,2,3)
    #   end
    #
    # Generally this is only needed for very large Sidekiq installs processing
    # thousands of jobs per second.  I do not recommend sharding unless
    # you cannot scale any other way (e.g. splitting your app into smaller apps).
    def via(pool); end
  end
end

# no difference for now
Sidekiq::ClientMiddleware = Sidekiq::ServerMiddleware

module Sidekiq::Context
  class << self
    def add(k, v); end
    def current; end
    def with(hash); end
  end
end

Sidekiq::DEFAULTS = T.let(T.unsafe(nil), Hash)

module Sidekiq::Extensions
  class << self
    def enable_delay!; end
  end
end

module Sidekiq::Extensions::PsychAutoload
  def resolve_class(klass_name); end
end

Sidekiq::FAKE_INFO = T.let(T.unsafe(nil), Hash)
Sidekiq::Job = Sidekiq::Worker

module Sidekiq::JobUtil
  # @raise [ArgumentError]
  def normalize_item(item); end

  def normalized_hash(item_class); end

  # @raise [ArgumentError]
  def validate(item); end

  def verify_json(item); end

  private

  # @return [Boolean]
  def json_safe?(item); end
end

# These functions encapsulate various job utilities.
Sidekiq::JobUtil::TRANSIENT_ATTRIBUTES = T.let(T.unsafe(nil), Array)

Sidekiq::LICENSE = T.let(T.unsafe(nil), String)

class Sidekiq::Logger < ::Logger
  include ::Sidekiq::LoggingUtils

  # @return [Logger] a new instance of Logger
  def initialize(*args, **kwargs); end
end

module Sidekiq::Logger::Formatters; end

class Sidekiq::Logger::Formatters::Base < ::Logger::Formatter
  def ctx; end
  def format_context; end
  def tid; end
end

class Sidekiq::Logger::Formatters::JSON < ::Sidekiq::Logger::Formatters::Base
  def call(severity, time, program_name, message); end
end

class Sidekiq::Logger::Formatters::Pretty < ::Sidekiq::Logger::Formatters::Base
  def call(severity, time, program_name, message); end
end

class Sidekiq::Logger::Formatters::WithoutTimestamp < ::Sidekiq::Logger::Formatters::Pretty
  def call(severity, time, program_name, message); end
end

module Sidekiq::LoggingUtils
  # Redefined to check severity against #level, and thus the thread-local level, rather than +@level+.
  # FIXME: Remove when the minimum Ruby version supports overriding Logger#level.
  def add(severity, message = T.unsafe(nil), progname = T.unsafe(nil), &block); end

  def debug?; end
  def error?; end
  def fatal?; end
  def info?; end
  def level; end
  def local_level; end
  def local_level=(level); end

  # Change the thread-local level for the duration of the given block.
  def log_at(level); end

  def warn?; end
end

Sidekiq::LoggingUtils::LEVELS = T.let(T.unsafe(nil), Hash)

# Middleware is code configured to run before/after
# a message is processed.  It is patterned after Rack
# middleware. Middleware exists for the client side
# (pushing jobs onto the queue) as well as the server
# side (when jobs are actually processed).
#
# To add middleware for the client:
#
# Sidekiq.configure_client do |config|
#   config.client_middleware do |chain|
#     chain.add MyClientHook
#   end
# end
#
# To modify middleware for the server, just call
# with another block:
#
# Sidekiq.configure_server do |config|
#   config.server_middleware do |chain|
#     chain.add MyServerHook
#     chain.remove ActiveRecord
#   end
# end
#
# To insert immediately preceding another entry:
#
# Sidekiq.configure_client do |config|
#   config.client_middleware do |chain|
#     chain.insert_before ActiveRecord, MyClientHook
#   end
# end
#
# To insert immediately after another entry:
#
# Sidekiq.configure_client do |config|
#   config.client_middleware do |chain|
#     chain.insert_after ActiveRecord, MyClientHook
#   end
# end
#
# This is an example of a minimal server middleware:
#
# class MyServerHook
#   include Sidekiq::ServerMiddleware
#   def call(job_instance, msg, queue)
#     logger.info "Before job"
#     redis {|conn| conn.get("foo") } # do something in Redis
#     yield
#     logger.info "After job"
#   end
# end
#
# This is an example of a minimal client middleware, note
# the method must return the result or the job will not push
# to Redis:
#
# class MyClientHook
#   include Sidekiq::ClientMiddleware
#   def call(job_class, msg, queue, redis_pool)
#     logger.info "Before push"
#     result = yield
#     logger.info "After push"
#     result
#   end
# end
module Sidekiq::Middleware; end

class Sidekiq::Middleware::Chain
  include ::Enumerable

  # @return [Chain] a new instance of Chain
  # @yield [_self]
  # @yieldparam _self [Sidekiq::Middleware::Chain] the object that the method was called on
  def initialize(config = T.unsafe(nil)); end

  def add(klass, *args); end
  def clear; end
  def each(&block); end

  # @return [Boolean]
  def empty?; end

  def entries; end

  # @return [Boolean]
  def exists?(klass); end

  def insert_after(oldklass, newklass, *args); end
  def insert_before(oldklass, newklass, *args); end
  def invoke(*args); end
  def prepend(klass, *args); end
  def remove(klass); end
  def retrieve; end

  private

  def initialize_copy(copy); end
end

class Sidekiq::Middleware::Entry
  # @return [Entry] a new instance of Entry
  def initialize(config, klass, *args); end

  # Returns the value of attribute klass.
  def klass; end

  def make_new; end
end

Sidekiq::NAME = T.let(T.unsafe(nil), String)
class Sidekiq::Rails < ::Rails::Engine; end

class Sidekiq::Rails::Reloader
  # @return [Reloader] a new instance of Reloader
  def initialize(app = T.unsafe(nil)); end

  def call; end
  def inspect; end
end

module Sidekiq::RedisConnection
  class << self
    # Returns the value of attribute adapter.
    def adapter; end

    # RedisConnection.adapter = :redis
    # RedisConnection.adapter = :redis_client
    def adapter=(adapter); end

    def create(options = T.unsafe(nil)); end

    private

    def determine_redis_provider; end
    def log_info(options); end

    # Sidekiq needs many concurrent Redis connections.
    #
    # We need a connection for each Processor.
    # We need a connection for Pro's real-time change listener
    # We need a connection to various features to call Redis every few seconds:
    #   - the process heartbeat.
    #   - enterprise's leader election
    #   - enterprise's cron support
    #
    # @raise [ArgumentError]
    def verify_sizing(size, concurrency); end
  end
end

class Sidekiq::RedisConnection::RedisAdapter
  # @return [RedisAdapter] a new instance of RedisAdapter
  def initialize(options); end

  def new_client; end

  private

  def client_opts(options); end
end

Sidekiq::RedisConnection::RedisAdapter::BaseError = Redis::BaseError
Sidekiq::RedisConnection::RedisAdapter::CommandError = Redis::CommandError

module Sidekiq::ServerMiddleware
  # Returns the value of attribute config.
  def config; end

  # Sets the attribute config
  #
  # @param value the value to set the attribute config to.
  def config=(_arg0); end

  def logger; end
  def redis(&block); end
  def redis_pool; end
end

# We are shutting down Sidekiq but what about threads that
# are working on some long job?  This error is
# raised in jobs that have not finished within the hard
# timeout limit.  This is needed to rollback db transactions,
# otherwise Ruby's Thread#kill will commit.  See #377.
# DO NOT RESCUE THIS ERROR IN YOUR JOBS
class Sidekiq::Shutdown < ::Interrupt; end

class Sidekiq::TransactionAwareClient
  # @return [TransactionAwareClient] a new instance of TransactionAwareClient
  def initialize(redis_pool); end

  def push(item); end

  # We don't provide transactionality for push_bulk because we don't want
  # to hold potentially hundreds of thousands of job records in memory due to
  # a long running enqueue process.
  def push_bulk(items); end
end

Sidekiq::VERSION = T.let(T.unsafe(nil), String)

# Include this module in your worker class and you can easily create
# asynchronous jobs:
#
#   class HardWorker
#     include Sidekiq::Worker
#     sidekiq_options queue: 'critical', retry: 5
#
#     def perform(*args)
#       # do some work
#     end
#   end
#
# Then in your Rails app, you can do this:
#
#   HardWorker.perform_async(1, 2, 3)
#
# Note that perform_async is a class method, perform is an instance method.
#
# Sidekiq::Worker also includes several APIs to provide compatibility with
# ActiveJob.
#
#   class SomeWorker
#     include Sidekiq::Worker
#     queue_as :critical
#
#     def perform(...)
#     end
#   end
#
#   SomeWorker.set(wait_until: 1.hour).perform_async(123)
#
# Note that arguments passed to the job must still obey Sidekiq's
# best practice for simple, JSON-native data types. Sidekiq will not
# implement ActiveJob's more complex argument serialization. For
# this reason, we don't implement `perform_later` as our call semantics
# are very different.
module Sidekiq::Worker
  include ::Sidekiq::Worker::Options

  mixes_in_class_methods ::Sidekiq::Worker::Options::ClassMethods
  mixes_in_class_methods ::Sidekiq::Worker::ClassMethods

  # Returns the value of attribute jid.
  def jid; end

  # Sets the attribute jid
  #
  # @param value the value to set the attribute jid to.
  def jid=(_arg0); end

  def logger; end

  class << self
    # @private
    # @raise [ArgumentError]
    def included(base); end
  end
end

module Sidekiq::Worker::ClassMethods
  def build_client; end

  # @raise [ArgumentError]
  def client_push(item); end

  # @raise [ArgumentError]
  def delay(*args); end

  # @raise [ArgumentError]
  def delay_for(*args); end

  # @raise [ArgumentError]
  def delay_until(*args); end

  def perform_async(*args); end

  # +interval+ must be a timestamp, numeric or something that acts
  #   numeric (like an activesupport time interval).
  def perform_at(interval, *args); end

  # Push a large number of jobs to Redis, while limiting the batch of
  # each job payload to 1,000. This method helps cut down on the number
  # of round trips to Redis, which can increase the performance of enqueueing
  # large numbers of jobs.
  #
  # +items+ must be an Array of Arrays.
  #
  # For finer-grained control, use `Sidekiq::Client.push_bulk` directly.
  #
  # Example (3 Redis round trips):
  #
  #     SomeWorker.perform_async(1)
  #     SomeWorker.perform_async(2)
  #     SomeWorker.perform_async(3)
  #
  # Would instead become (1 Redis round trip):
  #
  #     SomeWorker.perform_bulk([[1], [2], [3]])
  def perform_bulk(*args, **kwargs); end

  # +interval+ must be a timestamp, numeric or something that acts
  #   numeric (like an activesupport time interval).
  def perform_in(interval, *args); end

  # Inline execution of job's perform method after passing through Sidekiq.client_middleware and Sidekiq.server_middleware
  def perform_inline(*args); end

  # Inline execution of job's perform method after passing through Sidekiq.client_middleware and Sidekiq.server_middleware
  def perform_sync(*args); end

  def queue_as(q); end
  def set(options); end

  # Allows customization for this type of Worker.
  # Legal options:
  #
  #   queue - use a named queue for this Worker, default 'default'
  #   retry - enable the RetryJobs middleware for this Worker, *true* to use the default
  #      or *Integer* count
  #   backtrace - whether to save any error backtrace in the retry payload to display in web UI,
  #      can be true, false or an integer number of lines to save, default *false*
  #   pool - use the given Redis connection pool to push this type of job to a given shard.
  #
  # In practice, any option is allowed.  This is the main mechanism to configure the
  # options for a specific job.
  def sidekiq_options(opts = T.unsafe(nil)); end
end

# The Options module is extracted so we can include it in ActiveJob::Base
# and allow native AJs to configure Sidekiq features/internals.
module Sidekiq::Worker::Options
  mixes_in_class_methods ::Sidekiq::Worker::Options::ClassMethods

  class << self
    # @private
    def included(base); end
  end
end

module Sidekiq::Worker::Options::ClassMethods
  def get_sidekiq_options; end
  def sidekiq_class_attribute(*attrs); end

  # Allows customization for this type of Worker.
  # Legal options:
  #
  #   queue - name of queue to use for this job type, default *default*
  #   retry - enable retries for this Worker in case of error during execution,
  #      *true* to use the default or *Integer* count
  #   backtrace - whether to save any error backtrace in the retry payload to display in web UI,
  #      can be true, false or an integer number of lines to save, default *false*
  #
  # In practice, any option is allowed.  This is the main mechanism to configure the
  # options for a specific job.
  def sidekiq_options(opts = T.unsafe(nil)); end

  def sidekiq_retries_exhausted(&block); end
  def sidekiq_retry_in(&block); end
end

Sidekiq::Worker::Options::ClassMethods::ACCESSOR_MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

# This helper class encapsulates the set options for `set`, e.g.
#
#     SomeWorker.set(queue: 'foo').perform_async(....)
class Sidekiq::Worker::Setter
  include ::Sidekiq::JobUtil

  # @return [Setter] a new instance of Setter
  def initialize(klass, opts); end

  def perform_async(*args); end

  # +interval+ must be a timestamp, numeric or something that acts
  #   numeric (like an activesupport time interval).
  def perform_at(interval, *args); end

  def perform_bulk(args, batch_size: T.unsafe(nil)); end

  # +interval+ must be a timestamp, numeric or something that acts
  #   numeric (like an activesupport time interval).
  def perform_in(interval, *args); end

  # Explicit inline execution of a job. Returns nil if the job did not
  # execute, true otherwise.
  def perform_inline(*args); end

  # Explicit inline execution of a job. Returns nil if the job did not
  # execute, true otherwise.
  def perform_sync(*args); end

  def set(options); end

  private

  def at(interval); end
end
