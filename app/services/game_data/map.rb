# typed: true
# frozen_string_literal: true

module GameData
  class Map
    include Enumerable

    CONFLIC_KEYS = %i[name].freeze

    def initialize(rows)
      @rows = rows
    end

    def each(&block)
      items.each(&block)
    end

    def items
      @items ||= begin
        columns = @rows[0]
        @rows[1..].map { |row| columns.zip(row).to_h }
      end
    end

    def import
      ::Map.import to_a, on_duplicate_key_update: CONFLIC_KEYS
    end
  end
end
