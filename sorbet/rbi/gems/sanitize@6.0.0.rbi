# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sanitize` gem.
# Please instead update this file by running `bin/tapioca gem sanitize`.

class Sanitize
  # Returns a new Sanitize object initialized with the settings in _config_.
  #
  # @return [Sanitize] a new instance of Sanitize
  def initialize(config = T.unsafe(nil)); end

  # Returns a sanitized copy of the given _html_ fragment.
  #
  # @deprecated Use {#fragment} instead.
  def clean(html); end

  # Returns a sanitized copy of the given _html_ document.
  #
  # When sanitizing a document, the `<html>` element must be allowlisted or an
  # error will be raised. If this is undesirable, you should probably use
  # {#fragment} instead.
  #
  # @deprecated Use {#document} instead.
  def clean_document(html); end

  # Sanitizes the given `Nokogiri::XML::Node` and all its children, modifying it
  # in place.
  #
  # If _node_ is a `Nokogiri::XML::Document`, the `<html>` element must be
  # allowlisted or an error will be raised.
  #
  # @deprecated Use {#node!} instead.
  # @raise [ArgumentError]
  def clean_node!(node); end

  # Returns the value of attribute config.
  def config; end

  # Returns a sanitized copy of the given _html_ document.
  #
  # When sanitizing a document, the `<html>` element must be allowlisted or an
  # error will be raised. If this is undesirable, you should probably use
  # {#fragment} instead.
  def document(html); end

  # Returns a sanitized copy of the given _html_ fragment.
  def fragment(html); end

  # Sanitizes the given `Nokogiri::XML::Node` and all its children, modifying it
  # in place.
  #
  # If _node_ is a `Nokogiri::XML::Document`, the `<html>` element must be
  # allowlisted or an error will be raised.
  #
  # @raise [ArgumentError]
  def node!(node); end

  private

  # Preprocesses HTML before parsing to remove undesirable Unicode chars.
  def preprocess(html); end

  def to_html(node); end
  def transform_node!(node, node_allowlist); end

  # Performs top-down traversal of the given node, operating first on the node
  # itself, then traversing each child (if any) in order.
  #
  # @yield [node]
  def traverse(node, &block); end

  class << self
    # Returns a sanitized copy of the given _html_ fragment, using the settings in
    # _config_ if specified.
    #
    # @deprecated Use {.fragment} instead.
    def clean(html, config = T.unsafe(nil)); end

    # Returns a sanitized copy of the given full _html_ document, using the
    # settings in _config_ if specified.
    #
    # When sanitizing a document, the `<html>` element must be allowlisted or an
    # error will be raised. If this is undesirable, you should probably use
    # {#fragment} instead.
    #
    # @deprecated Use {.document} instead.
    def clean_document(html, config = T.unsafe(nil)); end

    # Sanitizes the given `Nokogiri::XML::Node` instance and all its children.
    #
    # @deprecated Use {.node!} instead.
    def clean_node!(node, config = T.unsafe(nil)); end

    # Returns a sanitized copy of the given full _html_ document, using the
    # settings in _config_ if specified.
    #
    # When sanitizing a document, the `<html>` element must be allowlisted or an
    # error will be raised. If this is undesirable, you should probably use
    # {#fragment} instead.
    def document(html, config = T.unsafe(nil)); end

    # Returns a sanitized copy of the given _html_ fragment, using the settings in
    # _config_ if specified.
    def fragment(html, config = T.unsafe(nil)); end

    # Sanitizes the given `Nokogiri::XML::Node` instance and all its children.
    def node!(node, config = T.unsafe(nil)); end
  end
end

class Sanitize::CSS
  # Returns a new Sanitize::CSS object initialized with the settings in
  # _config_.
  #
  # @return [CSS] a new instance of CSS
  def initialize(config = T.unsafe(nil)); end

  # Returns the value of attribute config.
  def config; end

  # Sanitizes inline CSS style properties.
  #
  # This is most useful for sanitizing non-stylesheet fragments of CSS like you
  # would find in the `style` attribute of an HTML element. To sanitize a full
  # CSS stylesheet, use {#stylesheet}.
  #
  # @example
  #   scss = Sanitize::CSS.new(Sanitize::Config::RELAXED)
  #   scss.properties("background: url(foo.png); color: #fff;")
  # @return [String] Sanitized CSS properties.
  def properties(css); end

  # Sanitizes a full CSS stylesheet.
  #
  # A stylesheet may include selectors, at-rules, and comments. To sanitize only
  # inline style properties such as the contents of an HTML `style` attribute,
  # use {#properties}.
  #
  # @example
  #   css = %[
  #   .foo {
  #   background: url(foo.png);
  #   color: #fff;
  #   }
  #
  #   #bar {
  #   font: 42pt 'Comic Sans MS';
  #   }
  #   ]
  #
  #   scss = Sanitize::CSS.new(Sanitize::Config::RELAXED)
  #   scss.stylesheet(css)
  # @return [String] Sanitized CSS stylesheet.
  def stylesheet(css); end

  # Sanitizes the given Crass CSS parse tree and all its children, modifying it
  # in place.
  #
  # @example
  #   css = %[
  #   .foo {
  #   background: url(foo.png);
  #   color: #fff;
  #   }
  #
  #   #bar {
  #   font: 42pt 'Comic Sans MS';
  #   }
  #   ]
  #
  #   scss = Sanitize::CSS.new(Sanitize::Config::RELAXED)
  #   tree = Crass.parse(css)
  #
  #   scss.tree!(tree)
  # @return [Array] Sanitized Crass CSS parse tree.
  def tree!(tree); end

  protected

  # Sanitizes a CSS at-rule node. Returns the sanitized node, or `nil` if the
  # current config doesn't allow this at-rule.
  def at_rule!(rule); end

  # Passes the URL value of an @import rule to a block to ensure
  # it's an allowed URL
  #
  # @return [Boolean]
  def import_url_allowed?(rule); end

  # Sanitizes a CSS property node. Returns the sanitized node, or `nil` if the
  # current config doesn't allow this property.
  def property!(prop); end

  # Returns `true` if the given node (which may be of type `:url` or
  # `:function`, since the CSS syntax can produce both) uses an allowlisted
  # protocol.
  #
  # @return [Boolean]
  def valid_url?(node); end

  class << self
    # Sanitizes inline CSS style properties.
    #
    # This is most useful for sanitizing non-stylesheet fragments of CSS like you
    # would find in the `style` attribute of an HTML element. To sanitize a full
    # CSS stylesheet, use {.stylesheet}.
    #
    # @example
    #   Sanitize::CSS.properties("background: url(foo.png); color: #fff;")
    # @return [String] Sanitized CSS properties.
    def properties(css, config = T.unsafe(nil)); end

    # Sanitizes a full CSS stylesheet.
    #
    # A stylesheet may include selectors, at-rules, and comments. To sanitize only
    # inline style properties such as the contents of an HTML `style` attribute,
    # use {.properties}.
    #
    # @example
    #   css = %[
    #   .foo {
    #   background: url(foo.png);
    #   color: #fff;
    #   }
    #
    #   #bar {
    #   font: 42pt 'Comic Sans MS';
    #   }
    #   ]
    #
    #   Sanitize::CSS.stylesheet(css, Sanitize::Config::RELAXED)
    # @return [String] Sanitized CSS stylesheet.
    def stylesheet(css, config = T.unsafe(nil)); end

    # Sanitizes the given Crass CSS parse tree and all its children, modifying it
    # in place.
    #
    # @example
    #   css = %[
    #   .foo {
    #   background: url(foo.png);
    #   color: #fff;
    #   }
    #
    #   #bar {
    #   font: 42pt 'Comic Sans MS';
    #   }
    #   ]
    #
    #   tree = Crass.parse(css)
    #   Sanitize::CSS.tree!(tree, Sanitize::Config::RELAXED)
    # @return [Array] Sanitized Crass CSS parse tree.
    def tree!(tree, config = T.unsafe(nil)); end
  end
end

module Sanitize::Config
  class << self
    # Deeply freezes and returns the given configuration Hash.
    def freeze_config(config); end

    # Returns a new Hash containing the result of deeply merging *other_config*
    # into *config*. Does not modify *config* or *other_config*.
    #
    # This is the safest way to use a built-in Sanitize config as the basis for
    # your own custom config.
    #
    # @raise [ArgumentError]
    def merge(config, other_config = T.unsafe(nil)); end

    private

    # Returns `true` if `dup` may be safely called on _value_, `false`
    # otherwise.
    #
    # @return [Boolean]
    def can_dupe?(value); end
  end
end

Sanitize::Config::BASIC = T.let(T.unsafe(nil), Hash)
Sanitize::Config::DEFAULT = T.let(T.unsafe(nil), Hash)
Sanitize::Config::RELAXED = T.let(T.unsafe(nil), Hash)
Sanitize::Config::RESTRICTED = T.let(T.unsafe(nil), Hash)
class Sanitize::Error < ::StandardError; end

# Matches one or more control characters that should be removed from HTML
# before parsing, as defined by the HTML living standard.
#
# -   https://html.spec.whatwg.org/multipage/parsing.html#preprocessing-the-input-stream
# -   https://infra.spec.whatwg.org/#control
Sanitize::REGEX_HTML_CONTROL_CHARACTERS = T.let(T.unsafe(nil), Regexp)

# Matches one or more non-characters that should be removed from HTML before
# parsing, as defined by the HTML living standard.
#
# -   https://html.spec.whatwg.org/multipage/parsing.html#preprocessing-the-input-stream
# -   https://infra.spec.whatwg.org/#noncharacter
Sanitize::REGEX_HTML_NON_CHARACTERS = T.let(T.unsafe(nil), Regexp)

# Matches an attribute value that could be treated by a browser as a URL
# with a protocol prefix, such as "http:" or "javascript:". Any string of zero
# or more characters followed by a colon is considered a match, even if the
# colon is encoded as an entity and even if it's an incomplete entity (which
# IE6 and Opera will still parse).
Sanitize::REGEX_PROTOCOL = T.let(T.unsafe(nil), Regexp)

# Matches one or more characters that should be stripped from HTML before
# parsing. This is a combination of `REGEX_HTML_CONTROL_CHARACTERS` and
# `REGEX_HTML_NON_CHARACTERS`.
#
# https://html.spec.whatwg.org/multipage/parsing.html#preprocessing-the-input-stream
Sanitize::REGEX_UNSUITABLE_CHARS = T.let(T.unsafe(nil), Regexp)

module Sanitize::Transformers; end
module Sanitize::Transformers::CSS; end

# Enforces a CSS allowlist on the contents of `style` attributes.
class Sanitize::Transformers::CSS::CleanAttribute
  # @return [CleanAttribute] a new instance of CleanAttribute
  def initialize(sanitizer_or_config); end

  def call(env); end
end

# Enforces a CSS allowlist on the contents of `<style>` elements.
class Sanitize::Transformers::CSS::CleanElement
  # @return [CleanElement] a new instance of CleanElement
  def initialize(sanitizer_or_config); end

  def call(env); end
end

Sanitize::Transformers::CleanCDATA = T.let(T.unsafe(nil), Proc)
Sanitize::Transformers::CleanComment = T.let(T.unsafe(nil), Proc)
Sanitize::Transformers::CleanDoctype = T.let(T.unsafe(nil), Proc)

class Sanitize::Transformers::CleanElement
  # @return [CleanElement] a new instance of CleanElement
  def initialize(config); end

  def call(env); end
end

# Matches a valid HTML5 data attribute name. The unicode ranges included here
# are a conservative subset of the full range of characters that are
# technically allowed, with the intent of matching the most common characters
# used in data attribute names while excluding uncommon or potentially
# misleading characters, or characters with the potential to be normalized
# into unsafe or confusing forms.
#
# If you need data attr names with characters that aren't included here (such
# as combining marks, full-width characters, or CJK), please consider creating
# a custom transformer to validate attributes according to your needs.
#
# http://www.whatwg.org/specs/web-apps/current-work/multipage/elements.html#embedding-custom-non-visible-data-with-the-data-*-attributes
Sanitize::Transformers::CleanElement::REGEX_DATA_ATTR = T.let(T.unsafe(nil), Regexp)

# Attributes that need additional escaping on `<a>` elements due to unsafe
# libxml2 behavior.
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ATTRS_A = T.let(T.unsafe(nil), Set)

# Attributes that need additional escaping on all elements due to unsafe
# libxml2 behavior.
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ATTRS_GLOBAL = T.let(T.unsafe(nil), Set)

# Mapping of original characters to escape sequences for characters that
# should be escaped in attributes affected by unsafe libxml2 behavior.
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ESCAPE_CHARS = T.let(T.unsafe(nil), Hash)

# Regex that matches any single character that needs to be escaped in
# attributes affected by unsafe libxml2 behavior.
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ESCAPE_REGEX = T.let(T.unsafe(nil), Regexp)

Sanitize::VERSION = T.let(T.unsafe(nil), String)
