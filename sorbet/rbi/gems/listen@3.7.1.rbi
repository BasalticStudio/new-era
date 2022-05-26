# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `listen` gem.
# Please instead update this file by running `bin/tapioca gem listen`.

# Besides programming error exceptions like ArgumentError,
# all public interface exceptions should be declared here and inherit from Listen::Error.
module Listen
  class << self
    def logger; end

    # Sets the attribute logger
    #
    # @param value the value to set the attribute logger to.
    def logger=(_arg0); end

    # This is used by the `listen` binary to handle Ctrl-C
    def stop; end

    # Listens to file system modifications on a either single directory or
    # multiple directories.
    #
    # @return [Listen::Listener] the listener
    # @yield [modified, added, removed] the changed files
    # @yieldparam modified [Array<String>] the list of modified files
    # @yieldparam added [Array<String>] the list of added files
    # @yieldparam removed [Array<String>] the list of removed files
    def to(*args, &block); end

    private

    def default_logger; end
  end
end

module Listen::Adapter
  class << self
    def select(options = T.unsafe(nil)); end

    private

    def _usable_adapter_class; end
    def _warn_polling_fallback(options); end
  end
end

class Listen::Adapter::BSD < ::Listen::Adapter::Base
  private

  def _change(event_flags); end
  def _configure(directory, &callback); end
  def _event_path(event); end

  # Quick rubocop workaround
  def _find(*paths, &block); end

  def _process_event(dir, event); end
  def _run; end
  def _watch_file(path, queue); end
  def _watch_for_new_file(event); end

  class << self
    # @return [Boolean]
    def usable?; end
  end
end

Listen::Adapter::BSD::BUNDLER_DECLARE_GEM = T.let(T.unsafe(nil), String)
Listen::Adapter::BSD::DEFAULTS = T.let(T.unsafe(nil), Hash)
Listen::Adapter::BSD::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

class Listen::Adapter::Base
  # @return [Base] a new instance of Base
  def initialize(config); end

  # Returns the value of attribute config.
  def config; end

  # TODO: it's a separate method as a temporary workaround for tests
  def configure; end

  # Returns the value of attribute options.
  def options; end

  def start; end

  # @return [Boolean]
  def started?; end

  def stop; end

  private

  def _log_exception(msg, caller_stack); end

  # TODO: allow backend adapters to pass specific invalidation objects
  # e.g. Darwin -> DirRescan, INotify -> MoveScan, etc.
  def _queue_change(type, dir, rel_path, options); end

  def _stop; end
  def _timed(title); end

  class << self
    # @return [Boolean]
    def usable?; end
  end
end

# TODO: only used by tests
Listen::Adapter::Base::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Listen::Adapter::Config
  # @return [Config] a new instance of Config
  def initialize(directories, queue, silencer, adapter_options); end

  # Returns the value of attribute adapter_options.
  def adapter_options; end

  # Returns the value of attribute directories.
  def directories; end

  # Returns the value of attribute queue.
  def queue; end

  # Returns the value of attribute silencer.
  def silencer; end
end

# Adapter implementation for Mac OS X `FSEvents`.
class Listen::Adapter::Darwin < ::Listen::Adapter::Base
  private

  def _configure(dir, &callback); end
  def _process_changes(dirs); end
  def _process_event(dir, path); end
  def _run; end
  def _stop; end

  class << self
    # @return [Boolean]
    def usable?; end
  end
end

# The default delay between checking for changes.
Listen::Adapter::Darwin::DEFAULTS = T.let(T.unsafe(nil), Hash)

Listen::Adapter::Darwin::INCOMPATIBLE_GEM_VERSION = T.let(T.unsafe(nil), String)
Listen::Adapter::Darwin::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

# @see https://github.com/nex3/rb-inotify
class Listen::Adapter::Linux < ::Listen::Adapter::Base
  private

  def _change(event_flags); end
  def _configure(directory, &callback); end

  # @return [Boolean]
  def _dir_event?(event); end

  def _process_event(dir, event); end
  def _run; end

  # @return [Boolean]
  def _skip_event?(event); end

  def _stop; end
end

Listen::Adapter::Linux::DEFAULTS = T.let(T.unsafe(nil), Hash)
Listen::Adapter::Linux::OS_REGEXP = T.let(T.unsafe(nil), Regexp)
Listen::Adapter::Linux::README_URL = T.let(T.unsafe(nil), String)
Listen::Adapter::OPTIMIZED_ADAPTERS = T.let(T.unsafe(nil), Array)
Listen::Adapter::POLLING_FALLBACK_MESSAGE = T.let(T.unsafe(nil), String)

# Polling Adapter that works cross-platform and
# has no dependencies. This is the adapter that
# uses the most CPU processing power and has higher
# file IO than the other implementations.
class Listen::Adapter::Polling < ::Listen::Adapter::Base
  private

  def _configure(_, &callback); end
  def _process_event(dir, _); end
  def _run; end
end

Listen::Adapter::Polling::DEFAULTS = T.let(T.unsafe(nil), Hash)

# match every OS
Listen::Adapter::Polling::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

# Adapter implementation for Windows `wdm`.
class Listen::Adapter::Windows < ::Listen::Adapter::Base
  private

  def _change(type); end
  def _configure(dir); end
  def _process_event(dir, event); end
  def _run; end

  class << self
    # @return [Boolean]
    def usable?; end
  end
end

Listen::Adapter::Windows::BUNDLER_DECLARE_GEM = T.let(T.unsafe(nil), String)
Listen::Adapter::Windows::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

class Listen::Backend
  extend ::Forwardable

  # @return [Backend] a new instance of Backend
  def initialize(directories, queue, silencer, config); end

  # Returns the value of attribute min_delay_between_events.
  def min_delay_between_events; end

  def start(*args, &block); end
  def stop(*args, &block); end

  private

  # Returns the value of attribute adapter.
  def adapter; end
end

# TODO: rename to Snapshot
class Listen::Change
  # @return [Change] a new instance of Change
  def initialize(config, record); end

  # Invalidate some part of the snapshot/record (dir, file, subtree, etc.)
  def invalidate(type, rel_path, options); end

  # Returns the value of attribute record.
  def record; end
end

# TODO: test this class for coverage
class Listen::Change::Config
  # @return [Config] a new instance of Config
  def initialize(queue, silencer); end

  def queue(*args); end

  # @return [Boolean]
  def silenced?(path, type); end
end

# TODO: refactor (turn it into a normal object, cache the stat, etc)
class Listen::Directory
  class << self
    def _async_changes(snapshot, path, previous, options); end
    def _change(snapshot, type, path, options); end
    def _children(path); end

    # @return [Boolean]
    def ascendant_of?(base, other); end

    def scan(snapshot, rel_path, options); end
  end
end

class Listen::Error < ::RuntimeError; end
class Listen::Error::INotifyMaxWatchesExceeded < ::Listen::Error; end
class Listen::Error::NotStarted < ::Listen::Error; end
class Listen::Error::SymlinkLoop < ::Listen::Error; end
module Listen::Event; end

class Listen::Event::Config
  # @return [Config] a new instance of Config
  def initialize(listener, event_queue, queue_optimizer, wait_for_delay, &block); end

  def call(*args); end

  # @return [Boolean]
  def callable?; end

  # Returns the value of attribute event_queue.
  def event_queue; end

  # Returns the value of attribute listener.
  def listener; end

  # Returns the value of attribute min_delay_between_events.
  def min_delay_between_events; end

  def optimize_changes(changes); end
  def sleep(seconds); end
end

class Listen::Event::Loop
  include ::Listen::FSM
  extend ::Listen::FSM::ClassMethods

  # @return [Loop] a new instance of Loop
  def initialize(config); end

  def pause; end
  def start; end

  # @return [Boolean]
  def started?; end

  def stop; end

  # @return [Boolean]
  def stopped?; end

  def wakeup_on_event; end

  private

  def _process_changes; end
  def _wakeup(reason); end
end

Listen::Event::Loop::Error = Listen::Error
Listen::Event::Loop::MAX_STARTUP_SECONDS = T.let(T.unsafe(nil), Float)

# for backward compatibility
Listen::Event::Loop::NotStarted = Listen::Error::NotStarted

class Listen::Event::Processor
  # @return [Processor] a new instance of Processor
  def initialize(config, reasons); end

  # TODO: implement this properly instead of checking the state at arbitrary
  # points in time
  def loop_for(latency); end

  private

  def _check_stopped; end
  def _deadline; end
  def _flush_wakeup_reasons; end

  # for easier testing without sleep loop
  def _process_changes(event); end

  def _remember_time_of_first_unprocessed_event; end
  def _reset_no_unprocessed_events; end
  def _sleep(seconds); end

  # blocks until event is popped
  # returns the event or `nil` when the event_queue is closed
  def _wait_until_events; end

  def _wait_until_events_calm_down; end
  def _wait_until_no_longer_paused; end

  # Returns the value of attribute config.
  def config; end
end

class Listen::Event::Processor::Stopped < ::RuntimeError; end

class Listen::Event::Queue
  extend ::Forwardable

  # @return [Queue] a new instance of Queue
  def initialize(config); end

  def <<(args); end
  def close(*args, &block); end
  def empty?(*args, &block); end
  def pop(*args, &block); end

  private

  def _safe_relative_from_cwd(dir); end
end

class Listen::Event::Queue::Config
  # @return [Config] a new instance of Config
  def initialize(relative); end

  # @return [Boolean]
  def relative?; end
end

module Listen::FSM
  mixes_in_class_methods ::Listen::FSM::ClassMethods

  # Note: including classes must call initialize_fsm from their initialize method.
  def initialize_fsm; end

  # Current state of the FSM, stored as a symbol
  def state; end

  # checks for one of the given states to wait for
  # if not already, waits for a state change (up to timeout seconds--`nil` means infinite)
  # returns truthy iff the transition to one of the desired state has occurred
  def wait_for_state(*wait_for_states, timeout: T.unsafe(nil)); end

  private

  def current_state; end
  def transition(new_state_name); end

  # Low-level, immediate state transition with no checks or callbacks.
  def transition!(new_state_name); end

  def transition_with_callbacks!(new_state); end
  def validate_and_sanitize_new_state(new_state_name); end

  class << self
    # Included hook to extend class methods
    def included(klass); end
  end
end

module Listen::FSM::ClassMethods
  # Obtain or set the start state
  # Passing a state name sets the start state
  def start_state(new_start_state = T.unsafe(nil)); end

  # Declare an FSM state and optionally provide a callback block to fire on state entry
  # Options:
  # * to: a state or array of states this state can transition to
  def state(state_name, to: T.unsafe(nil), &block); end

  # The valid states for this FSM, as a hash with state name symbols as keys and State objects as values.
  def states; end
end

class Listen::FSM::State
  # @return [State] a new instance of State
  def initialize(name, transitions, &block); end

  def call(obj); end

  # Returns the value of attribute name.
  def name; end

  # Returns the value of attribute transitions.
  def transitions; end

  # @return [Boolean]
  def valid_transition?(new_state); end
end

class Listen::File
  class << self
    def change(record, rel_path); end

    # @return [Boolean]
    def inaccurate_mac_time?(stat); end
  end
end

class Listen::Listener
  include ::Listen::FSM
  extend ::Listen::FSM::ClassMethods

  # Initializes the directories listener.
  #
  #
  # @param directory [String] the directories to listen to
  # @param options [Hash] the listen options (see Listen::Listener::Options)
  # @return [Listener] a new instance of Listener
  # @yield [modified, added, removed] the changed files
  # @yieldparam modified [Array<String>] the list of modified files
  # @yieldparam added [Array<String>] the list of added files
  # @yieldparam removed [Array<String>] the list of removed files
  def initialize(*dirs, &block); end

  def ignore(regexps); end
  def ignore!(regexps); end
  def only(regexps); end

  # Stops invoking callbacks (messages pile up)
  def pause; end

  # @return [Boolean]
  def paused?; end

  # processing means callbacks are called
  #
  # @return [Boolean]
  def processing?; end

  # Starts processing events and starts adapters
  # or resumes invoking callbacks if paused
  def start; end

  # Stops both listening for events and processing them
  def stop; end

  # @return [Boolean]
  def stopped?; end
end

class Listen::Listener::Config
  # @return [Config] a new instance of Config
  def initialize(opts); end

  def adapter_instance_options(klass); end
  def adapter_select_options; end

  # Returns the value of attribute min_delay_between_events.
  def min_delay_between_events; end

  # @return [Boolean]
  def relative?; end

  # Returns the value of attribute silencer_rules.
  def silencer_rules; end
end

Listen::Listener::Config::DEFAULTS = T.let(T.unsafe(nil), Hash)

module Listen::MonotonicTime
  class << self
    def now; end
  end
end

class Listen::Options
  # @return [Options] a new instance of Options
  def initialize(opts, defaults); end

  def method_missing(name, *_); end

  private

  # @return [Boolean]
  def respond_to_missing?(name, *_); end
end

class Listen::QueueOptimizer
  # @return [QueueOptimizer] a new instance of QueueOptimizer
  def initialize(config); end

  def smoosh_changes(changes); end

  private

  def _calculate_add_remove_difference(actions, path, default_if_exists); end
  def _logical_action_for(path, actions); end

  # remove extraneous rb-inotify events, keeping them only if it's a possible
  # editor rename() call (e.g. Kate and Sublime)
  def _reinterpret_related_changes(cookies); end

  # groups changes into the expected structure expected by
  # clients
  def _squash_changes(changes); end

  # Returns the value of attribute config.
  def config; end

  # @return [Boolean]
  def editor_modified?(changes); end
end

class Listen::QueueOptimizer::Config
  # @return [Config] a new instance of Config
  def initialize(adapter_class, silencer); end

  def debug(*args, &block); end

  # @return [Boolean]
  def exist?(path); end

  # @return [Boolean]
  def silenced?(path, type); end
end

# @private api
class Listen::Record
  # @return [Record] a new instance of Record
  def initialize(directory, silencer); end

  def add_dir(rel_path); end
  def build; end
  def dir_entries(rel_path); end
  def file_data(rel_path); end

  # TODO: one Record object per watched directory?
  # TODO: deprecate
  def root; end

  def unset_path(rel_path); end
  def update_file(rel_path, data); end

  private

  def _fast_build_dir(remaining, symlink_detector); end
  def _fast_try_file(entry); end
  def _fast_unset_path(dirname, basename); end
  def _fast_update_file(dirname, basename, data); end

  # @return [Boolean]
  def empty_dirname?(dirname); end

  def reset_tree; end
end

# Represents a directory entry (dir or file)
class Listen::Record::Entry
  # file: "/home/me/watched_dir", "app/models", "foo.rb"
  # dir, "/home/me/watched_dir", "."
  #
  # @return [Entry] a new instance of Entry
  def initialize(root, relative, name = T.unsafe(nil)); end

  def children; end
  def meta; end

  # Returns the value of attribute name.
  def name; end

  def real_path; end

  # record hash is e.g.
  # if @record["/home/me/watched_dir"]["project/app/models"]["foo.rb"]
  # if @record["/home/me/watched_dir"]["project/app"]["models"]
  # record_dir_key is "project/app/models"
  def record_dir_key; end

  # Returns the value of attribute relative.
  def relative; end

  # Returns the value of attribute root.
  def root; end

  def sys_path; end

  private

  # @raise [Errno::ENOTDIR]
  def _entries(dir); end

  def _join; end
end

class Listen::Record::SymlinkDetector
  # @return [SymlinkDetector] a new instance of SymlinkDetector
  def initialize; end

  def verify_unwatched!(entry); end

  private

  # @raise [::Listen::Error::SymlinkLoop]
  def _fail(symlinked, real_path); end
end

# for backward compatibility
Listen::Record::SymlinkDetector::Error = Listen::Error

Listen::Record::SymlinkDetector::README_URL = T.let(T.unsafe(nil), String)
Listen::Record::SymlinkDetector::SYMLINK_LOOP_ERROR = T.let(T.unsafe(nil), String)

class Listen::Silencer
  # @return [Silencer] a new instance of Silencer
  def initialize(**options); end

  # TODO: deprecate this mutator
  def configure(options); end

  # TODO: deprecate these mutators; use attr_reader instead
  def ignore_patterns; end

  # TODO: deprecate these mutators; use attr_reader instead
  def ignore_patterns=(_arg0); end

  # TODO: deprecate these mutators; use attr_reader instead
  def only_patterns; end

  # TODO: deprecate these mutators; use attr_reader instead
  def only_patterns=(_arg0); end

  # @return [Boolean]
  def silenced?(relative_path, type); end

  private

  # @return [Boolean]
  def _ignore?(path); end

  def _init_ignores(ignores, overrides); end

  # @return [Boolean]
  def _only?(path); end
end

class Listen::Silencer::Controller
  # @return [Controller] a new instance of Controller
  def initialize(silencer, default_options); end

  def append_ignores(*regexps); end
  def replace_with_bang_ignores(regexps); end
  def replace_with_only(regexps); end

  private

  def _reconfigure_silencer(extra_options); end
end

# The default list of files that get ignored.
Listen::Silencer::DEFAULT_IGNORED_EXTENSIONS = T.let(T.unsafe(nil), Regexp)

# The default list of directories that get ignored.
Listen::Silencer::DEFAULT_IGNORED_FILES = T.let(T.unsafe(nil), Regexp)

module Listen::Thread
  class << self
    # Creates a new thread with the given name.
    # Any exceptions raised by the thread will be logged with the thread name and complete backtrace.
    def new(name, &block); end

    def rescue_and_log(method_name, *args, caller_stack: T.unsafe(nil)); end

    private

    def _exception_with_causes(exception); end
    def _log_exception(exception, thread_name, caller_stack: T.unsafe(nil)); end
  end
end

Listen::VERSION = T.let(T.unsafe(nil), String)