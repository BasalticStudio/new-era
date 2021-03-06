# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `SettingsConfigOptions`.
# Please instead update this file by running `bin/tapioca dsl SettingsConfigOptions`.

Settings = T.let(T.unsafe(nil), SettingsConfigOptions)

class SettingsConfigOptions < ::Config::Options
  extend T::Generic

  Elem = type_member { { fixed: T.untyped } }

  sig { returns(T.untyped) }
  def game_data; end

  sig { params(value: T.untyped).returns(T.untyped) }
  def game_data=(value); end

  sig { returns(T.untyped) }
  def register_allowlist; end

  sig { params(value: T.untyped).returns(T.untyped) }
  def register_allowlist=(value); end
end
