# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/oj/all/oj.rbi
#
# oj-3.13.13

module Oj
  def add_to_json(*arg0); end
  def compat_load(*arg0); end
  def debug_odd(arg0); end
  def default_options; end
  def default_options=(arg0); end
  def dump(*arg0); end
  def fast_generate(*arg0); end
  def generate(*arg0); end
  def load(*arg0); end
  def load_file(*arg0); end
  def mimic_JSON(*arg0); end
  def object_load(*arg0); end
  def optimize_rails; end
  def register_odd(*arg0); end
  def register_odd_raw(*arg0); end
  def remove_to_json(*arg0); end
  def safe_load(arg0); end
  def saj_parse(*arg0); end
  def sc_parse(*arg0); end
  def self.add_to_json(*arg0); end
  def self.compat_load(*arg0); end
  def self.debug_odd(arg0); end
  def self.default_options; end
  def self.default_options=(arg0); end
  def self.dump(*arg0); end
  def self.fast_generate(*arg0); end
  def self.generate(*arg0); end
  def self.load(*arg0); end
  def self.load_file(*arg0); end
  def self.mimic_JSON(*arg0); end
  def self.mimic_loaded(mimic_paths = nil); end
  def self.object_load(*arg0); end
  def self.optimize_rails; end
  def self.register_odd(*arg0); end
  def self.register_odd_raw(*arg0); end
  def self.remove_to_json(*arg0); end
  def self.safe_load(arg0); end
  def self.saj_parse(*arg0); end
  def self.sc_parse(*arg0); end
  def self.strict_load(*arg0); end
  def self.to_file(*arg0); end
  def self.to_json(*arg0); end
  def self.to_stream(*arg0); end
  def self.wab_load(*arg0); end
  def strict_load(*arg0); end
  def to_file(*arg0); end
  def to_json(*arg0); end
  def to_stream(*arg0); end
  def wab_load(*arg0); end
end
class Oj::Bag
  def ==(other); end
  def eql?(other); end
  def initialize(args = nil); end
  def method_missing(m, *args, &block); end
  def respond_to?(m); end
  def self.define_class(classname); end
end
class Oj::EasyHash < Hash
  def [](key); end
  def initialize; end
  def method_missing(m, *args, &block); end
  def respond_to?(m, include_all = nil); end
end
class Oj::Error < StandardError
end
class Oj::ParseError < Oj::Error
end
class Oj::DepthError < Oj::Error
end
class Oj::LoadError < Oj::Error
end
class Oj::MimicError < Oj::Error
end
class Oj::MimicDumpOption < Hash
  def []=(key, value); end
  def initialize; end
end
class String
  def self.json_create(obj); end
  def to_json_raw(*arg0); end
  def to_json_raw_object; end
end
class Oj::Saj
  def add_value(value, key); end
  def array_end(key); end
  def array_start(key); end
  def error(message, line, column); end
  def hash_end(key); end
  def hash_start(key); end
  def initialize; end
end
class Oj::ScHandler
  def add_value(value); end
  def array_append(a, value); end
  def array_end; end
  def array_start; end
  def hash_end; end
  def hash_key(key); end
  def hash_set(h, key, value); end
  def hash_start; end
  def initialize; end
end
class Oj::StringWriter
  def as_json; end
  def new(*arg0); end
  def pop; end
  def pop_all; end
  def push_array(*arg0); end
  def push_json(*arg0); end
  def push_key(arg0); end
  def push_object(*arg0); end
  def push_value(*arg0); end
  def raw_json; end
  def reset; end
  def self.new(*arg0); end
  def to_s; end
end
class Oj::StreamWriter
  def flush; end
  def new(*arg0); end
  def pop; end
  def pop_all; end
  def push_array(*arg0); end
  def push_json(*arg0); end
  def push_key(arg0); end
  def push_object(*arg0); end
  def push_value(*arg0); end
  def self.new(*arg0); end
end
module Oj::Rails
  def deoptimize(*arg0); end
  def encode(*arg0); end
  def mimic_JSON; end
  def optimize(*arg0); end
  def optimized?(arg0); end
  def self.deoptimize(*arg0); end
  def self.encode(*arg0); end
  def self.mimic_JSON; end
  def self.optimize(*arg0); end
  def self.optimized?(arg0); end
  def self.set_decoder; end
  def self.set_encoder; end
  def set_decoder; end
  def set_encoder; end
end
class Oj::Rails::Encoder
  def deoptimize(*arg0); end
  def encode(arg0); end
  def new(*arg0); end
  def optimize(*arg0); end
  def optimized?(arg0); end
  def self.new(*arg0); end
end
class Oj::Doc
  def clone; end
  def close; end
  def dump(*arg0); end
  def dup; end
  def each_child(*arg0); end
  def each_leaf(*arg0); end
  def each_value(*arg0); end
  def exists?(arg0); end
  def fetch(*arg0); end
  def home; end
  def local_key; end
  def move(arg0); end
  def path; end
  def self.open(arg0); end
  def self.open_file(arg0); end
  def self.parse(arg0); end
  def size; end
  def type(*arg0); end
  def where; end
  def where?; end
end
class Oj::Parser
  def file(arg0); end
  def just_one; end
  def just_one=(arg0); end
  def load(arg0); end
  def method_missing(*arg0); end
  def new(*arg0); end
  def parse(arg0); end
  def saj; end
  def self.new(*arg0); end
  def self.saj; end
  def self.usual; end
  def self.validate; end
  def usual; end
  def validate; end
end
