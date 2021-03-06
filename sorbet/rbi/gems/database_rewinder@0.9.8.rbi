# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `database_rewinder` gem.
# Please instead update this file by running `bin/tapioca gem database_rewinder`.

module DatabaseRewinder
  class << self
    def [](connection); end
    def all=(v); end

    # cache AR connection.tables
    def all_table_names(connection); end

    def clean(multiple: T.unsafe(nil)); end
    def clean_all(multiple: T.unsafe(nil)); end
    def cleaners; end
    def create_cleaner(connection_name); end
    def database_configuration; end

    # Set your DB configuration here if you'd like to use something else than the AR configuration
    def database_configuration=(_arg0); end

    def database_configuration_for(connection_name); end
    def init; end
    def multiple_database_configuration_for(connection_name); end
    def record_inserted_table(connection, sql); end
    def traditional_configuration_for(connection_name); end

    private

    def configuration_hash_for(connection_name); end
    def get_cache_key(connection_pool); end
  end
end

class DatabaseRewinder::Railtie < ::Rails::Railtie; end
DatabaseRewinder::VERSION = T.let(T.unsafe(nil), String)
