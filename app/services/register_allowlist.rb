# typed: true
# frozen_string_literal: true

class RegisterAllowlist
  include Enumerable

  def initialize(source = nil)
    @source = Pathname.new(source) if source
    @items = Set.new
  end

  def each(&block)
    refresh
    @items.each(&block)
  end

  def register(*items)
    @items.merge(items)
  end

  def refresh
    return unless @source&.exist?

    register(*@source.each_line.map(&:strip))
  end
end
