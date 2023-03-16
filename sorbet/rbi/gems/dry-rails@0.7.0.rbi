# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-rails` gem.
# Please instead update this file by running `bin/tapioca gem dry-rails`.

# source://dry-rails//lib/dry/rails/railtie.rb#5
module Dry
  class << self
    # source://dry-auto_inject/1.0.1/lib/dry/auto_inject.rb#61
    def AutoInject(container, options = T.unsafe(nil)); end

    # source://dry-configurable/1.0.1/lib/dry/configurable.rb#11
    def Configurable(**options); end

    # source://dry-core/1.0.0/lib/dry/core.rb#41
    def Equalizer(*keys, **options); end
  end
end

# Initializer interface
#
# @api public
# @example set up a container with auto-registration paths
#   # config/initializer/system.rb
#
#   Dry::Rails.container do
#   config.component_dirs.add "lib" do |dir|
#   dir.namespaces.add "my_super_cool_app", key: nil
#   end
#
#   config.component_dirs.add "app/operations"
#   end
#
# source://dry-rails//lib/dry/rails/railtie.rb#6
module Dry::Rails
  class << self
    # @api private
    #
    # source://dry-rails//lib/dry/rails.rb#56
    def _container_blocks; end

    # Set container block that will be evaluated in the context of the container
    #
    # @api public
    # @return [self]
    #
    # source://dry-rails//lib/dry/rails.rb#30
    def container(&block); end

    # Create a new container class
    #
    # This is used during booting and reloading
    #
    # @api private
    # @param options [Hash] Container configuration settings
    # @return [Class]
    #
    # source://dry-rails//lib/dry/rails.rb#44
    def create_container(options = T.unsafe(nil)); end

    # @api private
    #
    # source://dry-rails//lib/dry/rails.rb#49
    def evaluate_initializer(container); end
  end
end

# source://dry-rails//lib/dry/rails/auto_registrars/app.rb#7
module Dry::Rails::AutoRegistrars; end

# This is the default auto-registrar configured in the Container
#
# @api private
#
# source://dry-rails//lib/dry/rails/auto_registrars/app.rb#21
class Dry::Rails::AutoRegistrars::App < ::Dry::System::AutoRegistrar
  # Resolve a path relative to the system root
  #
  # This works just like in `dry-system` except that it's app-dir aware. This means it will
  # turn `app/operations/foo/bar` to `foo/bar` because app dirs are treated as root dirs.
  #
  # In a typical dry-system setup `app` would be the root and everything inside this path
  # would indicate the constant hierachy, so `app/operations/foo/bar` => `Operations/Foo/Bar`
  # but *this is not the Rails convention* so we need this special auto-registrar.
  #
  # @api private
  #
  # source://dry-rails//lib/dry/rails/auto_registrars/app.rb#22
  def relative_path(dir, file_path); end
end

# Customized Container class for Rails applications
#
# @api public
#
# source://dry-rails//lib/dry/rails/container.rb#14
class Dry::Rails::Container < ::Dry::System::Container
  class << self
    # This is called when reloading in dev mode
    #
    # @api private
    # @return [self]
    #
    # source://dry-rails//lib/dry/rails/container.rb#82
    def refresh_provider_files; end

    # Return if a given component was started
    #
    # @api private
    # @return [Boolean]
    #
    # source://dry-rails//lib/dry/rails/container.rb#65
    def started?(name); end
  end
end

# The railtie is responsible for setting up a container and handling reloading in dev mode
#
# @api public
#
# source://dry-rails//lib/dry/rails/railtie.rb#10
class Dry::Rails::Railtie < ::Rails::Railtie
  # Infer the default application namespace
  #
  # TODO: we had to rename namespace=>app_namespace because
  #       Rake::DSL's Kernel#namespace *sometimes* breaks things.
  #       Currently we are missing specs verifying that rake tasks work
  #       correctly and those must be added!
  #
  # @api public
  # @return [Module]
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#120
  def app_namespace; end

  # Exposes the container constant
  #
  # @api public
  # @return [Dry::Rails::Container]
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#87
  def container; end

  # @api public
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#11
  def container_const_name; end

  # Sets or reloads a constant within the application namespace
  #
  # @api private
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#130
  def default_inflector; end

  # Code-reloading-aware finalization process
  #
  # This sets up `Container` and `Deps` constants, reloads them if this is in reloading mode,
  # and registers default components like the railtie itself or the inflector
  #
  #
  # @api public
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#27
  def finalize!; end

  # Return the default system name
  #
  # In the dry-system world containers are explicitly named using symbols, so that you can
  # refer to them easily when ie importing one container into another
  #
  # @api private
  # @return [Symbol]
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#106
  def name; end

  # Code-reloading-aware finalization process
  #
  # This sets up `Container` and `Deps` constants, reloads them if this is in reloading mode,
  # and registers default components like the railtie itself or the inflector
  #
  #
  # @api public
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#27
  def reload; end

  # Return true if we're in code-reloading mode
  #
  # @api private
  # @return [Boolean]
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#94
  def reloading?; end

  # @api private
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#141
  def remove_constant(const_name); end

  # @api private
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#135
  def set_or_reload(const_name, const); end

  # Stops all configured features (bootable components)
  #
  # This is *crucial* when reloading code in development mode. Every bootable component
  # should be able to clear the runtime from any constants that it created in its `stop`
  # lifecycle step
  #
  # @api public
  #
  # source://dry-rails//lib/dry/rails/railtie.rb#76
  def stop_features; end
end