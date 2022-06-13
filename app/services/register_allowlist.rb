# typed: true
# frozen_string_literal: true

class RegisterAllowlist
  include Enumerable

  def initialize(source = Settings.register_allowlist.path)
    @source = Pathname.new(source) if source
    @items = Set.new
  end

  def each(&block)
    reload
    @items.each(&block)
  end

  def register(*items)
    @items.merge(items)
  end

  def reload
    return unless @source&.exist?

    register(*@source.each_line.map(&:strip))
  end

  def write(items)
    @source.write(items.flatten.join("\n"))
  end
end
