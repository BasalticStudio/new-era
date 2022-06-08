# typed: true
# frozen_string_literal: true

class RegisterAllowlist
  include Singleton
  include Enumerable

  def initialize
    @items = Set.new
  end

  def each(&block)
    @items.each(&block)
  end

  def register(*items)
    @items.merge(items)
  end
end
