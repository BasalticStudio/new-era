# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bundler-audit` gem.
# Please instead update this file by running `bin/tapioca gem bundler-audit`.

module Bundler::Audit; end

# Represents an advisory loaded from the {Database}.
class Bundler::Audit::Advisory < ::Struct
  # Compares two advisories.
  #
  # @param other [Advisory]
  # @return [Boolean]
  def ==(other); end

  # Determines how critical the vulnerability is.
  #
  # @return [:none, :low, :medium, :high, :critical, nil] The criticality of the vulnerability based on the CVSS score.
  def criticality; end

  # The CVE identifier.
  #
  # @return [String, nil]
  def cve_id; end

  # The GHSA (GitHub Security Advisory) identifier
  #
  # @return [String, nil]
  # @since 0.7.0
  def ghsa_id; end

  # Return a compacted list of all ids
  #
  # @return [Array<String>]
  # @since 0.7.0
  def identifiers; end

  # The OSVDB identifier.
  #
  # @return [String, nil]
  def osvdb_id; end

  # Checks whether the version is patched against the advisory.
  #
  # @param version [Gem::Version] The version to compare against {#patched_versions}.
  # @return [Boolean] Specifies whether the version is patched against the advisory.
  # @since 0.2.0
  def patched?(version); end

  # Converts the advisory to a Hash.
  #
  # @return [Hash{Symbol => Object}]
  def to_h; end

  # Returns the value of attribute id
  #
  # @return [Object] the current value of id
  def to_s; end

  # Checks whether the version is not affected by the advisory.
  #
  # @param version [Gem::Version] The version to compare against {#unaffected_versions}.
  # @return [Boolean] Specifies whether the version is not affected by the advisory.
  # @since 0.2.0
  def unaffected?(version); end

  # Checks whether the version is vulnerable to the advisory.
  #
  # @param version [Gem::Version] The version to compare against {#patched_versions}.
  # @return [Boolean] Specifies whether the version is vulnerable to the advisory or not.
  def vulnerable?(version); end

  class << self
    # Loads the advisory from a YAML file.
    #
    # @api semipublic
    # @param path [String] The path to the advisory YAML file.
    # @return [Advisory]
    def load(path); end
  end
end

# Represents the directory of advisories, grouped by gem name
# and CVE number.
class Bundler::Audit::Database
  # Initializes the Advisory Database.
  #
  # @param path [String] The path to the advisory database.
  # @raise [ArgumentError] The path was not a directory.
  # @return [Database] a new instance of Database
  def initialize(path = T.unsafe(nil)); end

  # Enumerates over every advisory in the database.
  #
  # @return [Enumerator] If no block is given, an Enumerator will be returned.
  # @yield [advisory] If a block is given, it will be passed each advisory.
  # @yieldparam advisory [Advisory] An advisory from the database.
  def advisories(&block); end

  # Enumerates over advisories for the given gem.
  #
  # @param name [String] The gem name to lookup.
  # @return [Enumerator] If no block is given, an Enumerator will be returned.
  # @yield [advisory] If a block is given, each advisory for the given gem will be yielded.
  # @yieldparam advisory [Advisory] An advisory for the given gem.
  def advisories_for(name); end

  # Verifies whether the gem is effected by any advisories.
  #
  # @param gem [Gem::Specification] The gem to verify.
  # @return [Enumerator] If no block is given, an Enumerator will be returned.
  # @yield [advisory] If a block is given, it will be passed advisories that effect
  #   the gem.
  # @yieldparam advisory [Advisory] An advisory that effects the specific version of the gem.
  def check_gem(gem); end

  # The last commit ID of the repository.
  #
  # @return [String, nil] The commit hash or `nil` if the database is not a git repository.
  # @since 0.9.0
  def commit_id; end

  # Determines if the database is a git repository.
  #
  # @return [Boolean]
  # @since 0.8.0
  def git?; end

  # Inspects the database.
  #
  # @return [String] The inspected database.
  def inspect; end

  # Determines the time when the database was last updated.
  #
  # @return [Time]
  # @since 0.8.0
  def last_updated_at; end

  # The path to the advisory database.
  #
  # @return [String]
  def path; end

  # The number of advisories within the database.
  #
  # @return [Integer] The number of advisories.
  def size; end

  # Converts the database to a String.
  #
  # @return [String] The path to the database.
  def to_s; end

  # Updates the ruby-advisory-db.
  #
  # @option options
  # @param options [Hash] Additional options.
  # @return [true, nil] `true` indicates that the update was successful.
  #   `nil` indicates the database is not a git repository, thus not
  #   capable of being updated.
  # @since 0.8.0
  def update!(options = T.unsafe(nil)); end

  protected

  # Enumerates over every advisory path in the database.
  #
  # @yield [path] The given block will be passed each advisory path.
  # @yieldparam path [String] A path to an advisory `.yml` file.
  def each_advisory_path(&block); end

  # Enumerates over the advisories for the given gem.
  #
  # @param name [String] The gem of the gem.
  # @yield [path] The given block will be passed each advisory path.
  # @yieldparam path [String] A path to an advisory `.yml` file.
  def each_advisory_path_for(name, &block); end

  class << self
    # Downloads the ruby-advisory-db.
    #
    # @note Requires network access.
    # @option options
    # @option options
    # @param options [Hash] Additional options.
    # @raise [DownloadFailed] Indicates that the download failed.
    # @return [Dataase] The newly downloaded database.
    # @since 0.8.0
    def download(options = T.unsafe(nil)); end

    # Tests whether the database exists.
    #
    # @param path [String] The given path of the database to check.
    # @return [Boolean]
    # @since 0.8.0
    def exists?(path = T.unsafe(nil)); end

    # The default path for the database.
    #
    # @return [String] The path to the database directory.
    def path; end

    # Updates the ruby-advisory-db.
    #
    # @deprecated Use {#update!} instead.
    # @note Requires network access.
    # @option options
    # @param options [Hash] Additional options.
    # @raise [ArgumentError] Invalid options were given.
    # @return [Boolean, nil] Specifies whether the update was successful.
    #   A `nil` indicates no update was performed.
    # @since 0.3.0
    def update!(options = T.unsafe(nil)); end
  end
end

# Default path to the ruby-advisory-db.
#
# @since 0.8.0
Bundler::Audit::Database::DEFAULT_PATH = T.let(T.unsafe(nil), String)

class Bundler::Audit::Database::DownloadFailed < ::RuntimeError; end

# Git URL of the ruby-advisory-db.
Bundler::Audit::Database::URL = T.let(T.unsafe(nil), String)

# Path to the user's copy of the ruby-advisory-db.
Bundler::Audit::Database::USER_PATH = T.let(T.unsafe(nil), String)

class Bundler::Audit::Database::UpdateFailed < ::RuntimeError; end

# bundler-audit version
Bundler::Audit::VERSION = T.let(T.unsafe(nil), String)
