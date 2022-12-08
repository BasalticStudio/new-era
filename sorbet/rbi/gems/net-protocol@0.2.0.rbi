# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `net-protocol` gem.
# Please instead update this file by running `bin/tapioca gem net-protocol`.

# source://net-protocol//lib/net/protocol.rb#115
class Net::BufferedIO
  # @return [BufferedIO] a new instance of BufferedIO
  #
  # source://net-protocol//lib/net/protocol.rb#116
  def initialize(io, read_timeout: T.unsafe(nil), write_timeout: T.unsafe(nil), continue_timeout: T.unsafe(nil), debug_output: T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#294
  def <<(*strs); end

  # source://net-protocol//lib/net/protocol.rb#144
  def close; end

  # @return [Boolean]
  #
  # source://net-protocol//lib/net/protocol.rb#140
  def closed?; end

  # Returns the value of attribute continue_timeout.
  #
  # source://net-protocol//lib/net/protocol.rb#129
  def continue_timeout; end

  # Sets the attribute continue_timeout
  #
  # @param value the value to set the attribute continue_timeout to.
  #
  # source://net-protocol//lib/net/protocol.rb#129
  def continue_timeout=(_arg0); end

  # Returns the value of attribute debug_output.
  #
  # source://net-protocol//lib/net/protocol.rb#130
  def debug_output; end

  # Sets the attribute debug_output
  #
  # @param value the value to set the attribute debug_output to.
  #
  # source://net-protocol//lib/net/protocol.rb#130
  def debug_output=(_arg0); end

  # @return [Boolean]
  #
  # source://net-protocol//lib/net/protocol.rb#136
  def eof?; end

  # source://net-protocol//lib/net/protocol.rb#132
  def inspect; end

  # Returns the value of attribute io.
  #
  # source://net-protocol//lib/net/protocol.rb#126
  def io; end

  # source://net-protocol//lib/net/protocol.rb#154
  def read(len, dest = T.unsafe(nil), ignore_eof = T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#175
  def read_all(dest = T.unsafe(nil)); end

  # Returns the value of attribute read_timeout.
  #
  # source://net-protocol//lib/net/protocol.rb#127
  def read_timeout; end

  # Sets the attribute read_timeout
  #
  # @param value the value to set the attribute read_timeout to.
  #
  # source://net-protocol//lib/net/protocol.rb#127
  def read_timeout=(_arg0); end

  # source://net-protocol//lib/net/protocol.rb#207
  def readline; end

  # source://net-protocol//lib/net/protocol.rb#193
  def readuntil(terminator, ignore_eof = T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#294
  def write(*strs); end

  # Returns the value of attribute write_timeout.
  #
  # source://net-protocol//lib/net/protocol.rb#128
  def write_timeout; end

  # Sets the attribute write_timeout
  #
  # @param value the value to set the attribute write_timeout to.
  #
  # source://net-protocol//lib/net/protocol.rb#128
  def write_timeout=(_arg0); end

  # source://net-protocol//lib/net/protocol.rb#302
  def writeline(str); end

  private

  # source://net-protocol//lib/net/protocol.rb#365
  def LOG(msg); end

  # source://net-protocol//lib/net/protocol.rb#356
  def LOG_off; end

  # source://net-protocol//lib/net/protocol.rb#361
  def LOG_on; end

  # source://net-protocol//lib/net/protocol.rb#266
  def rbuf_consume(len = T.unsafe(nil)); end

  # Warning: this method may share the buffer to avoid
  # copying. The caller must no longer use the returned
  # string once rbuf_fill has been called again
  #
  # source://net-protocol//lib/net/protocol.rb#255
  def rbuf_consume_all_shareable!; end

  # source://net-protocol//lib/net/protocol.rb#215
  def rbuf_fill; end

  # source://net-protocol//lib/net/protocol.rb#240
  def rbuf_flush; end

  # source://net-protocol//lib/net/protocol.rb#248
  def rbuf_size; end

  # source://net-protocol//lib/net/protocol.rb#320
  def write0(*strs); end

  # source://net-protocol//lib/net/protocol.rb#310
  def writing; end
end

# source://net-protocol//lib/net/protocol.rb#372
class Net::InternetMessageIO < ::Net::BufferedIO
  # @return [InternetMessageIO] a new instance of InternetMessageIO
  #
  # source://net-protocol//lib/net/protocol.rb#373
  def initialize(*_arg0, **_arg1); end

  # *library private* (cannot handle 'break')
  #
  # source://net-protocol//lib/net/protocol.rb#395
  def each_list_item; end

  # Read
  #
  # source://net-protocol//lib/net/protocol.rb#382
  def each_message_chunk; end

  # Write
  #
  # source://net-protocol//lib/net/protocol.rb#413
  def write_message(src); end

  # source://net-protocol//lib/net/protocol.rb#401
  def write_message_0(src); end

  # source://net-protocol//lib/net/protocol.rb#426
  def write_message_by_block(&block); end

  private

  # source://net-protocol//lib/net/protocol.rb#469
  def buffer_filling(buf, src); end

  # source://net-protocol//lib/net/protocol.rb#445
  def dot_stuff(s); end

  # source://net-protocol//lib/net/protocol.rb#461
  def each_crlf_line(src); end

  # source://net-protocol//lib/net/protocol.rb#449
  def using_each_crlf_line; end
end

# source://net-protocol//lib/net/protocol.rb#550
Net::NetPrivate::Socket = Net::InternetMessageIO

# source://net-protocol//lib/net/protocol.rb#68
Net::ProtocRetryError = Net::ProtoRetriableError

# source://net-protocol//lib/net/protocol.rb#28
class Net::Protocol
  private

  # source://net-protocol//lib/net/protocol.rb#40
  def ssl_socket_connect(s, timeout); end

  class << self
    # source://net-protocol//lib/net/protocol.rb#32
    def protocol_param(name, val); end
  end
end

# source://net-protocol//lib/net/protocol.rb#29
Net::Protocol::VERSION = T.let(T.unsafe(nil), String)

# source://net-protocol//lib/net/protocol.rb#525
class Net::ReadAdapter
  # @return [ReadAdapter] a new instance of ReadAdapter
  #
  # source://net-protocol//lib/net/protocol.rb#526
  def initialize(block); end

  # source://net-protocol//lib/net/protocol.rb#534
  def <<(str); end

  # source://net-protocol//lib/net/protocol.rb#530
  def inspect; end

  private

  # This method is needed because @block must be called by yield,
  # not Proc#call.  You can see difference when using `break' in
  # the block.
  #
  # @yield [str]
  #
  # source://net-protocol//lib/net/protocol.rb#543
  def call_block(str); end
end

# ReadTimeout, a subclass of Timeout::Error, is raised if a chunk of the
# response cannot be read within the read_timeout.
#
# source://net-protocol//lib/net/protocol.rb#80
class Net::ReadTimeout < ::Timeout::Error
  # @return [ReadTimeout] a new instance of ReadTimeout
  #
  # source://net-protocol//lib/net/protocol.rb#81
  def initialize(io = T.unsafe(nil)); end

  # Returns the value of attribute io.
  #
  # source://net-protocol//lib/net/protocol.rb#84
  def io; end

  # source://net-protocol//lib/net/protocol.rb#86
  def message; end
end

# The writer adapter class
#
# source://net-protocol//lib/net/protocol.rb#495
class Net::WriteAdapter
  # @return [WriteAdapter] a new instance of WriteAdapter
  #
  # source://net-protocol//lib/net/protocol.rb#496
  def initialize(writer); end

  # source://net-protocol//lib/net/protocol.rb#510
  def <<(str); end

  # source://net-protocol//lib/net/protocol.rb#500
  def inspect; end

  # source://net-protocol//lib/net/protocol.rb#504
  def print(str); end

  # source://net-protocol//lib/net/protocol.rb#519
  def printf(*args); end

  # source://net-protocol//lib/net/protocol.rb#515
  def puts(str = T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#504
  def write(str); end
end

# WriteTimeout, a subclass of Timeout::Error, is raised if a chunk of the
# response cannot be written within the write_timeout.  Not raised on Windows.
#
# source://net-protocol//lib/net/protocol.rb#99
class Net::WriteTimeout < ::Timeout::Error
  # @return [WriteTimeout] a new instance of WriteTimeout
  #
  # source://net-protocol//lib/net/protocol.rb#100
  def initialize(io = T.unsafe(nil)); end

  # Returns the value of attribute io.
  #
  # source://net-protocol//lib/net/protocol.rb#103
  def io; end

  # source://net-protocol//lib/net/protocol.rb#105
  def message; end
end