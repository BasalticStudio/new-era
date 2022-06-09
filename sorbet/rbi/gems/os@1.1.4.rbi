# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `os` gem.
# Please instead update this file by running `bin/tapioca gem os`.

# a set of friendly files for determining your Ruby runtime
# treats cygwin as linux
# also treats IronRuby on mono as...linux
class OS
  # Returns the value of attribute config.
  def config; end

  class << self
    def app_config_path(name); end
    def bits; end
    def config; end
    def cpu_count; end

    # @return [Boolean]
    def cygwin?; end

    # File::NULL in 1.9.3+
    def dev_null; end

    # true if on windows [and/or jruby]
    # false if on linux or cygwin on windows
    # a joke name but I use it and like it :P
    #
    # @return [Boolean]
    def doze?; end

    # @return [Boolean]
    def freebsd?; end

    def host; end
    def host_cpu; end
    def host_os; end

    # @return [Boolean]
    def hwprefs_available?; end

    # @return [Boolean]
    def iron_ruby?; end

    # @return [Boolean]
    def java?; end

    # @return [Boolean]
    def jruby?; end

    # true for linux, false for windows, os x, cygwin
    #
    # @return [Boolean]
    def linux?; end

    # @return [Boolean]
    def mac?; end

    def open_file_command; end

    # @return [Boolean]
    def osx?; end

    def parse_os_release; end

    # true for linux, os x, cygwin
    #
    # @return [Boolean]
    def posix?; end

    # provides easy way to see the relevant config entries
    def report; end

    # amount of memory the current process "is using", in RAM
    # (doesn't include any swap memory that it may be using, just that in actual RAM)
    # raises 'unknown' on jruby currently
    def rss_bytes; end

    def ruby_bin; end

    # true if on windows [and/or jruby]
    # false if on linux or cygwin on windows
    #
    # @return [Boolean]
    def windows?; end

    # @return [Boolean]
    def x?; end
  end
end

class OS::Underlying
  class << self
    # @return [Boolean]
    def bsd?; end

    # @return [Boolean]
    def docker?; end

    # @return [Boolean]
    def linux?; end

    # @return [Boolean]
    def windows?; end
  end
end