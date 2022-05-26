# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `oj` gem.
# Please instead update this file by running `bin/tapioca gem oj`.

JSON::Parser = JSON::Ext::Parser
JSON::State = JSON::Ext::Generator::State

module Oj
  private

  def add_to_json(*_arg0); end
  def compat_load(*_arg0); end
  def debug_odd(_arg0); end
  def default_options; end
  def default_options=(_arg0); end
  def dump(*_arg0); end
  def fast_generate(*_arg0); end
  def generate(*_arg0); end
  def load(*_arg0); end
  def load_file(*_arg0); end
  def mimic_JSON(*_arg0); end
  def object_load(*_arg0); end
  def optimize_rails; end
  def register_odd(*_arg0); end
  def register_odd_raw(*_arg0); end
  def remove_to_json(*_arg0); end
  def safe_load(_arg0); end
  def saj_parse(*_arg0); end
  def sc_parse(*_arg0); end
  def strict_load(*_arg0); end
  def to_file(*_arg0); end
  def to_json(*_arg0); end
  def to_stream(*_arg0); end
  def wab_load(*_arg0); end

  class << self
    def add_to_json(*_arg0); end
    def compat_load(*_arg0); end
    def debug_odd(_arg0); end
    def default_options; end
    def default_options=(_arg0); end
    def dump(*_arg0); end
    def fast_generate(*_arg0); end
    def generate(*_arg0); end
    def load(*_arg0); end
    def load_file(*_arg0); end
    def mimic_JSON(*_arg0); end

    # Loads mimic-ed JSON paths. Used by Oj.mimic_JSON().
    #
    # @param mimic_paths [Array] additional paths to add to the Ruby loaded features.
    def mimic_loaded(mimic_paths = T.unsafe(nil)); end

    def object_load(*_arg0); end
    def optimize_rails; end
    def register_odd(*_arg0); end
    def register_odd_raw(*_arg0); end
    def remove_to_json(*_arg0); end
    def safe_load(_arg0); end
    def saj_parse(*_arg0); end
    def sc_parse(*_arg0); end
    def strict_load(*_arg0); end
    def to_file(*_arg0); end
    def to_json(*_arg0); end
    def to_stream(*_arg0); end
    def wab_load(*_arg0); end
  end
end

# A generic class that is used only for storing attributes. It is the base
# Class for auto-generated classes in the storage system. Instance variables
# are added using the instance_variable_set() method. All instance variables
# can be accessed using the variable name (without the @ prefix). No setters
# are provided as the Class is intended for reading only.
class Oj::Bag
  # The initializer can take multiple arguments in the form of key values
  # where the key is the variable name and the value is the variable
  # value. This is intended for testing purposes only.
  #
  # @example Oj::Bag.new(:@x => 42, :@y => 57)
  # @param args [Hash] instance variable symbols and their values
  # @return [Bag] a new instance of Bag
  def initialize(args = T.unsafe(nil)); end

  # Replaces eql?() with something more reasonable for this Class.
  #
  # @param other [Object] Object to compare self to
  # @return [Boolean] true if each variable and value are the same, otherwise false.
  def ==(other); end

  # Replaces eql?() with something more reasonable for this Class.
  #
  # @param other [Object] Object to compare self to
  # @return [Boolean] true if each variable and value are the same, otherwise false.
  def eql?(other); end

  # Handles requests for variable values. Others cause an Exception to be
  # raised.
  #
  # @param m [Symbol] method symbol
  # @raise [ArgumentError] if an argument is given. Zero arguments expected.
  # @raise [NoMethodError] if the instance variable is not defined.
  # @return [Boolean] the value of the specified instance variable.
  def method_missing(m, *args, &block); end

  # Replaces the Object.respond_to?() method.
  #
  # @param m [Symbol] method symbol
  # @return [Boolean] true for any method that matches an instance
  #   variable reader, otherwise false.
  def respond_to?(m); end

  class << self
    # Define a new class based on the Oj::Bag class. This is used internally in
    # the Oj module and is available to service wrappers that receive XML
    # requests that include Objects of Classes not defined in the storage
    # process.
    #
    # @param classname [String] Class name or symbol that includes Module names.
    # @raise [NameError] if the classname is invalid.
    # @return [Object] an instance of the specified Class.
    def define_class(classname); end
  end
end

class Oj::CStack; end

# Custom mode can be used to emulate the compat mode with some minor
# differences. These are the options that setup the custom mode to be like
# the compat mode.
Oj::CUSTOM_MIMIC_JSON_OPTIONS = T.let(T.unsafe(nil), Hash)

class Oj::Cache; end

# An Exception that is raised as a result of a path being too deep.
class Oj::DepthError < ::Oj::Error; end

class Oj::Doc
  def clone; end
  def close; end
  def dump(*_arg0); end
  def dup; end
  def each_child(*_arg0); end
  def each_leaf(*_arg0); end
  def each_value(*_arg0); end
  def exists?(_arg0); end
  def fetch(*_arg0); end
  def home; end
  def local_key; end
  def move(_arg0); end
  def path; end
  def size; end
  def type(*_arg0); end
  def where; end
  def where?; end

  class << self
    def open(_arg0); end
    def open_file(_arg0); end
    def parse(_arg0); end
  end
end

# A Hash subclass that normalizes the hash keys to allow lookup by the
# key.to_s or key.to_sym. It also supports looking up hash values by methods
# that match the keys.
class Oj::EasyHash < ::Hash
  # Initializes the instance to an empty Hash.
  #
  # @return [EasyHash] a new instance of EasyHash
  def initialize; end

  def [](key); end

  # Handles requests for Hash values. Others cause an Exception to be raised.
  #
  # @param m [Symbol|String] method symbol
  # @raise [ArgumentError] if an argument is given. Zero arguments expected.
  # @raise [NoMethodError] if the instance variable is not defined.
  # @return [Boolean] the value of the specified instance variable.
  def method_missing(m, *args, &block); end

  # Replaces the Object.respond_to?() method.
  #
  # @param m [Symbol] method symbol
  # @param include_all [Boolean] whether to include private and protected methods in the search
  # @return [Boolean] true for any method that matches an instance
  #   variable reader, otherwise false.
  def respond_to?(m, include_all = T.unsafe(nil)); end
end

# Inherit Error class from StandardError.
class Oj::Error < ::StandardError; end

# An Exception that is raised if a file fails to load.
class Oj::LoadError < ::Oj::Error; end

# A bit hack-ish but does the trick. The JSON.dump_default_options is a Hash
# but in mimic we use a C struct to store defaults. This class creates a view
# onto that struct.
class Oj::MimicDumpOption < ::Hash
  # @return [MimicDumpOption] a new instance of MimicDumpOption
  def initialize; end

  def []=(key, value); end
end

# An Exception that is raised if there is a conflict with mimicking JSON
class Oj::MimicError < ::Oj::Error; end

# An Exception that is raised as a result of a parse error while parsing a JSON document.
class Oj::ParseError < ::Oj::Error; end

class Oj::Parser
  def file(_arg0); end
  def just_one; end
  def just_one=(_arg0); end
  def load(_arg0); end
  def method_missing(*_arg0); end
  def parse(_arg0); end

  private

  def new(*_arg0); end
  def saj; end
  def usual; end
  def validate; end

  class << self
    def new(*_arg0); end
    def saj; end
    def usual; end
    def validate; end
  end
end

module Oj::Rails
  private

  def deoptimize(*_arg0); end
  def encode(*_arg0); end
  def mimic_JSON; end
  def optimize(*_arg0); end
  def optimized?(_arg0); end
  def set_decoder; end
  def set_encoder; end

  class << self
    def deoptimize(*_arg0); end
    def encode(*_arg0); end
    def mimic_JSON; end
    def optimize(*_arg0); end
    def optimized?(_arg0); end
    def set_decoder; end
    def set_encoder; end
  end
end

class Oj::Rails::Encoder
  def deoptimize(*_arg0); end
  def encode(_arg0); end
  def optimize(*_arg0); end
  def optimized?(_arg0); end

  private

  def new(*_arg0); end

  class << self
    def new(*_arg0); end
  end
end

# A SAX style parse handler for JSON hence the acronym SAJ for Simple API for
# JSON. The Oj::Saj handler class should be subclassed and then used with the
# Oj::Saj key_parse() method. The Saj methods will then be called as the file
# is parsed.
#
# To make the desired methods active while parsing the desired method should
# be made public in the subclasses. If the methods remain private they will
# not be called during parsing.
#
#    def hash_start(key); end
#    def hash_end(key); end
#    def array_start(key); end
#    def array_end(key); end
#    def add_value(value, key); end
#    def error(message, line, column); end
#
# @example
#
#   require 'oj'
#
#   class MySaj < ::Oj::Saj
#   def initialize()
#   @hash_cnt = 0
#   end
#
#   def hash_start(key)
#   @hash_cnt += 1
#   end
#   end
#
#   cnt = MySaj.new()
#   File.open('any.json', 'r') do |f|
#   Oj.saj_parse(cnt, f)
#   end
class Oj::Saj
  # Create a new instance of the Saj handler class.
  #
  # @return [Saj] a new instance of Saj
  def initialize; end

  private

  def add_value(value, key); end
  def array_end(key); end
  def array_start(key); end
  def error(message, line, column); end
  def hash_end(key); end
  def hash_start(key); end
end

# A Simple Callback Parser (SCP) for JSON. The Oj::ScHandler class should be
# subclassed and then used with the Oj.sc_parse() method. The Scp methods will
# then be called as the file is parsed. The handler does not have to be a
# subclass of the ScHandler class as long as it responds to the desired
# methods.
#
# To make the desired methods active while parsing the desired method should
# be made public in the subclasses. If the methods remain private they will
# not be called during parsing.
#
#    def hash_start(); end
#    def hash_end(); end
#    def hash_key(key); end
#    def hash_set(h, key, value); end
#    def array_start(); end
#    def array_end(); end
#    def array_append(a, value); end
#    def add_value(value); end
#
# As certain elements of a JSON document are reached during parsing the
# callbacks are called. The parser helps by keeping track of objects created
# by the callbacks but does not create those objects itself.
#
#    hash_start
#
# When a JSON object element starts the hash_start() callback is called if
# public. It should return what ever Ruby Object is to be used as the element
# that will later be included in the hash_set() callback.
#
#    hash_end
#
# When a hash key is encountered the hash_key method is called with the parsed
# hash value key. The return value from the call is then used as the key in
# the key-value pair that follows.
#
#    hash_key
#
# At the end of a JSON object element the hash_end() callback is called if public.
#
#    hash_set
#
# When a key value pair is encountered during parsing the hash_set() callback
# is called if public. The first element will be the object returned from the
# enclosing hash_start() callback. The second argument is the key and the last
# is the value.
#
#    array_start
#
# When a JSON array element is started the array_start() callback is called if
# public. It should return what ever Ruby Object is to be used as the element
# that will later be included in the array_append() callback.
#
#    array_end
#
# At the end of a JSON array element the array_end() callback is called if public.
#
#    array_append
#
# When a element is encountered that is an element of an array the
# array_append() callback is called if public. The first argument to the
# callback is the Ruby object returned from the enclosing array_start()
# callback.
#
#    add_value
#
# The handler is expected to handle multiple JSON elements in one stream,
# file, or string. When a top level JSON has been read completely the
# add_value() callback is called. Even if only one element was ready this
# callback returns the Ruby object that was constructed during the parsing.
#
# @example
#
#   require 'oj'
#
#   class MyHandler < ::Oj::ScHandler
#   def hash_start
#   {}
#   end
#
#   def hash_set(h,k,v)
#   h[k] = v
#   end
#
#   def array_start
#   []
#   end
#
#   def array_append(a,v)
#   a << v
#   end
#
#   def add_value(v)
#   p v
#   end
#
#   def error(message, line, column)
#   p "ERROR: #{message}"
#   end
#   end
#
#   File.open('any.json', 'r') do |f|
#   Oj.sc_parse(MyHandler.new, f)
#   end
class Oj::ScHandler
  # Create a new instance of the ScHandler class.
  #
  # @return [ScHandler] a new instance of ScHandler
  def initialize; end

  private

  def add_value(value); end
  def array_append(a, value); end
  def array_end; end
  def array_start; end
  def hash_end; end
  def hash_key(key); end
  def hash_set(h, key, value); end
  def hash_start; end
end

class Oj::StreamWriter
  def flush; end
  def pop; end
  def pop_all; end
  def push_array(*_arg0); end
  def push_json(*_arg0); end
  def push_key(_arg0); end
  def push_object(*_arg0); end
  def push_value(*_arg0); end

  private

  def new(*_arg0); end

  class << self
    def new(*_arg0); end
  end
end

class Oj::StringWriter
  def as_json; end
  def pop; end
  def pop_all; end
  def push_array(*_arg0); end
  def push_json(*_arg0); end
  def push_key(_arg0); end
  def push_object(*_arg0); end
  def push_value(*_arg0); end
  def raw_json; end
  def reset; end
  def to_s; end

  private

  def new(*_arg0); end

  class << self
    def new(*_arg0); end
  end
end

# Current version of the module.
Oj::VERSION = T.let(T.unsafe(nil), String)

# More monkey patches.
class String
  include ::Comparable
  include ::JSON::Ext::Generator::GeneratorMethods::String
  include ::MessagePack::CoreExt
  extend ::JSON::Ext::Generator::GeneratorMethods::String::Extend

  def to_json_raw(*_arg0); end
  def to_json_raw_object; end

  class << self
    def json_create(obj); end
  end
end

String::BLANK_RE = T.let(T.unsafe(nil), Regexp)
String::ENCODED_BLANKS = T.let(T.unsafe(nil), Concurrent::Map)
