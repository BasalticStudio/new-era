# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rack-test` gem.
# Please instead update this file by running `bin/tapioca gem rack-test`.

# based off https://github.com/newrelic/rpm/blob/master/lib/new_relic/agent/instrumentation/active_record.rb
# fallback for alls sorts of weird dbs
module Rack
  class << self
    # Return the Rack release as a dotted string.
    def release; end

    # Return the Rack protocol version as a dotted string.
    def version; end
  end
end

Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)
Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)
Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Rack::DELETE = T.let(T.unsafe(nil), String)
Rack::ETAG = T.let(T.unsafe(nil), String)
Rack::EXPIRES = T.let(T.unsafe(nil), String)
Rack::File = Rack::Files

# HTTP method verbs
Rack::GET = T.let(T.unsafe(nil), String)

Rack::HEAD = T.let(T.unsafe(nil), String)
Rack::HTTPS = T.let(T.unsafe(nil), String)
Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)
Rack::HTTP_HOST = T.let(T.unsafe(nil), String)
Rack::HTTP_PORT = T.let(T.unsafe(nil), String)
Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)
Rack::LINK = T.let(T.unsafe(nil), String)

class Rack::MockSession
  # @return [MockSession] a new instance of MockSession
  def initialize(app, default_host = T.unsafe(nil)); end

  def after_request(&block); end
  def clear_cookies; end
  def cookie_jar; end

  # Sets the attribute cookie_jar
  #
  # @param value the value to set the attribute cookie_jar to.
  def cookie_jar=(_arg0); end

  # Returns the value of attribute default_host.
  def default_host; end

  # Return the last request issued in the session. Raises an error if no
  # requests have been sent yet.
  #
  # @raise [Rack::Test::Error]
  def last_request; end

  # Return the last response received in the session. Raises an error if
  # no requests have been sent yet.
  #
  # @raise [Rack::Test::Error]
  def last_response; end

  def request(uri, env); end
  def set_cookie(cookie, uri = T.unsafe(nil)); end
end

Rack::OPTIONS = T.let(T.unsafe(nil), String)
Rack::PATCH = T.let(T.unsafe(nil), String)
Rack::PATH_INFO = T.let(T.unsafe(nil), String)
Rack::POST = T.let(T.unsafe(nil), String)
Rack::PUT = T.let(T.unsafe(nil), String)
Rack::QUERY_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)
Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)
Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)
Rack::RACK_INPUT = T.let(T.unsafe(nil), String)
Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)
Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)
Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)
Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)
Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)
Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)
Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)
Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)

# Rack environment variables
Rack::RACK_VERSION = T.let(T.unsafe(nil), String)

Rack::RELEASE = T.let(T.unsafe(nil), String)
Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)
Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)
Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)
Rack::SERVER_NAME = T.let(T.unsafe(nil), String)
Rack::SERVER_PORT = T.let(T.unsafe(nil), String)
Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)
Rack::SET_COOKIE = T.let(T.unsafe(nil), String)
Rack::TRACE = T.let(T.unsafe(nil), String)
Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

module Rack::Test
  class << self
    # @return [Boolean]
    def encoding_aware_strings?; end
  end
end

class Rack::Test::Cookie
  include ::Rack::Utils

  # :api: private
  #
  # @return [Cookie] a new instance of Cookie
  def initialize(raw, uri = T.unsafe(nil), default_host = T.unsafe(nil)); end

  # :api: private
  def <=>(other); end

  # :api: private
  def domain; end

  # :api: private
  #
  # @return [Boolean]
  def empty?; end

  # :api: private
  #
  # @return [Boolean]
  def expired?; end

  # :api: private
  def expires; end

  # @return [Boolean]
  def http_only?; end

  # :api: private
  #
  # @return [Boolean]
  def matches?(uri); end

  # :api: private
  def name; end

  # :api: private
  def path; end

  # :api: private
  def raw; end

  # @return [Boolean]
  def replaces?(other); end

  # @return [Boolean]
  def secure?; end

  def to_h; end
  def to_hash; end

  # :api: private
  #
  # @return [Boolean]
  def valid?(uri); end

  # :api: private
  def value; end

  protected

  def default_uri; end
end

class Rack::Test::CookieJar
  # :api: private
  #
  # @return [CookieJar] a new instance of CookieJar
  def initialize(cookies = T.unsafe(nil), default_host = T.unsafe(nil)); end

  def <<(new_cookie); end
  def [](name); end
  def []=(name, value); end
  def delete(name); end

  # :api: private
  def for(uri); end

  def get_cookie(name); end
  def merge(raw_cookies, uri = T.unsafe(nil)); end
  def to_hash; end

  protected

  def hash_for(uri = T.unsafe(nil)); end
end

Rack::Test::CookieJar::DELIMITER = T.let(T.unsafe(nil), String)
Rack::Test::DEFAULT_HOST = T.let(T.unsafe(nil), String)

# The common base class for exceptions raised by Rack::Test
class Rack::Test::Error < ::StandardError; end

Rack::Test::MULTIPART_BOUNDARY = T.let(T.unsafe(nil), String)

# This module serves as the primary integration point for using Rack::Test
# in a testing environment. It depends on an app method being defined in the
# same context, and provides the Rack::Test API methods (see Rack::Test::Session
# for their documentation).
#
# Example:
#
#   class HomepageTest < Test::Unit::TestCase
#     include Rack::Test::Methods
#
#     def app
#       MyApp.new
#     end
#   end
module Rack::Test::Methods
  extend ::Forwardable

  def _current_session_names; end
  def authorize(*args, &block); end
  def basic_authorize(*args, &block); end
  def build_rack_mock_session; end
  def build_rack_test_session(name); end
  def clear_cookies(*args, &block); end
  def current_session; end
  def custom_request(*args, &block); end
  def delete(*args, &block); end
  def digest_authorize(*args, &block); end
  def env(*args, &block); end
  def follow_redirect!(*args, &block); end
  def get(*args, &block); end
  def head(*args, &block); end
  def header(*args, &block); end
  def last_request(*args, &block); end
  def last_response(*args, &block); end
  def options(*args, &block); end
  def patch(*args, &block); end
  def post(*args, &block); end
  def put(*args, &block); end
  def rack_mock_session(name = T.unsafe(nil)); end
  def rack_test_session(name = T.unsafe(nil)); end
  def request(*args, &block); end
  def set_cookie(*args, &block); end

  # @yield [rack_test_session(name)]
  def with_session(name); end
end

Rack::Test::Methods::METHODS = T.let(T.unsafe(nil), Array)

class Rack::Test::MockDigestRequest
  # @return [MockDigestRequest] a new instance of MockDigestRequest
  def initialize(params); end

  def method; end
  def method_missing(sym); end
  def response(password); end
end

# This class represents a series of requests issued to a Rack app, sharing
# a single cookie jar
#
# Rack::Test::Session's methods are most often called through Rack::Test::Methods,
# which will automatically build a session when it's first used.
class Rack::Test::Session
  include ::Rack::Utils
  include ::Rack::Test::Utils
  extend ::Forwardable

  # Creates a Rack::Test::Session for a given Rack app or Rack::MockSession.
  #
  # Note: Generally, you won't need to initialize a Rack::Test::Session directly.
  # Instead, you should include Rack::Test::Methods into your testing context.
  # (See README.rdoc for an example)
  #
  # @return [Session] a new instance of Session
  def initialize(mock_session); end

  # Set the username and password for HTTP Basic authorization, to be
  # included in subsequent requests in the HTTP_AUTHORIZATION header.
  #
  # Example:
  #   basic_authorize "bryan", "secret"
  def authorize(username, password); end

  # Set the username and password for HTTP Basic authorization, to be
  # included in subsequent requests in the HTTP_AUTHORIZATION header.
  #
  # Example:
  #   basic_authorize "bryan", "secret"
  def basic_authorize(username, password); end

  def clear_cookies(*args, &block); end

  # Issue a request using the given verb for the given URI. See #get
  #
  # Example:
  #   custom_request "LINK", "/"
  def custom_request(verb, uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Issue a DELETE request for the given URI. See #get
  #
  # Example:
  #   delete "/"
  def delete(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Set the username and password for HTTP Digest authorization, to be
  # included in subsequent requests in the HTTP_AUTHORIZATION header.
  #
  # Example:
  #   digest_authorize "bryan", "secret"
  def digest_authorize(username, password); end

  # Set an env var to be included on all subsequent requests through the
  # session. Use a value of nil to remove a previously configured env.
  #
  # Example:
  #   env "rack.session", {:csrf => 'token'}
  def env(name, value); end

  # Rack::Test will not follow any redirects automatically. This method
  # will follow the redirect returned (including setting the Referer header
  # on the new request) in the last response. If the last response was not
  # a redirect, an error will be raised.
  def follow_redirect!; end

  # Issue a GET request for the given URI with the given params and Rack
  # environment. Stores the issues request object in #last_request and
  # the app's response in #last_response. Yield #last_response to a block
  # if given.
  #
  # Example:
  #   get "/"
  def get(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Issue a HEAD request for the given URI. See #get
  #
  # Example:
  #   head "/"
  def head(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Set a header to be included on all subsequent requests through the
  # session. Use a value of nil to remove a previously configured header.
  #
  # In accordance with the Rack spec, headers will be included in the Rack
  # environment hash in HTTP_USER_AGENT form.
  #
  # Example:
  #   header "User-Agent", "Firefox"
  def header(name, value); end

  def last_request(*args, &block); end
  def last_response(*args, &block); end

  # Issue an OPTIONS request for the given URI. See #get
  #
  # Example:
  #   options "/"
  def options(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Issue a PATCH request for the given URI. See #get
  #
  # Example:
  #   patch "/"
  def patch(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Issue a POST request for the given URI. See #get
  #
  # Example:
  #   post "/signup", "name" => "Bryan"
  def post(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Issue a PUT request for the given URI. See #get
  #
  # Example:
  #   put "/"
  def put(uri, params = T.unsafe(nil), env = T.unsafe(nil), &block); end

  # Issue a request to the Rack app for the given URI and optional Rack
  # environment. Stores the issues request object in #last_request and
  # the app's response in #last_response. Yield #last_response to a block
  # if given.
  #
  # Example:
  #   request "/"
  def request(uri, env = T.unsafe(nil), &block); end

  def set_cookie(*args, &block); end

  private

  def default_env; end

  # @return [Boolean]
  def digest_auth_configured?; end

  def digest_auth_header; end
  def env_for(uri, env); end
  def headers_for_env; end
  def params_to_string(params); end
  def parse_uri(path, env); end
  def process_request(uri, env); end

  # @return [Boolean]
  def retry_with_digest_auth?(env); end
end

# Wraps a Tempfile with a content type. Including one or more UploadedFile's
# in the params causes Rack::Test to build and issue a multipart request.
#
# Example:
#   post "/photos", "file" => Rack::Test::UploadedFile.new("me.jpg", "image/jpeg")
class Rack::Test::UploadedFile
  # Creates a new UploadedFile instance.
  #
  # @param content [IO, Pathname, String, StringIO] a path to a file, or an {IO} or {StringIO} object representing the
  #   file.
  # @param content_type [String]
  # @param binary [Boolean] an optional flag that indicates whether the file should be open in binary mode or not.
  # @param original_filename [String] an optional parameter that provides the original filename if `content` is a StringIO
  #   object. Not used for other kind of `content` objects.
  # @return [UploadedFile] a new instance of UploadedFile
  def initialize(content, content_type = T.unsafe(nil), binary = T.unsafe(nil), original_filename: T.unsafe(nil)); end

  # The content type of the "uploaded" file
  def content_type; end

  # The content type of the "uploaded" file
  def content_type=(_arg0); end

  def local_path; end
  def method_missing(method_name, *args, &block); end

  # The filename, *not* including the path, of the "uploaded" file
  def original_filename; end

  def path; end

  # The tempfile
  def tempfile; end

  private

  def initialize_from_file_path(path); end
  def initialize_from_stringio(stringio, original_filename); end

  # @return [Boolean]
  def respond_to_missing?(method_name, include_private = T.unsafe(nil)); end

  class << self
    def actually_finalize(file); end
    def finalize(file); end
  end
end

module Rack::Test::Utils
  include ::Rack::Utils
  extend ::Rack::Utils

  private

  def build_file_part(parameter_name, uploaded_file); end
  def build_multipart(params, first = T.unsafe(nil), multipart = T.unsafe(nil)); end
  def build_nested_query(value, prefix = T.unsafe(nil)); end
  def build_parts(parameters); end
  def build_primitive_part(parameter_name, value); end
  def get_parts(parameters); end

  class << self
    def build_file_part(parameter_name, uploaded_file); end
    def build_multipart(params, first = T.unsafe(nil), multipart = T.unsafe(nil)); end
    def build_nested_query(value, prefix = T.unsafe(nil)); end
    def build_parts(parameters); end
    def build_primitive_part(parameter_name, value); end
    def get_parts(parameters); end
  end
end

Rack::Test::VERSION = T.let(T.unsafe(nil), String)
Rack::UNLINK = T.let(T.unsafe(nil), String)

# The Rack protocol version number implemented.
Rack::VERSION = T.let(T.unsafe(nil), Array)
