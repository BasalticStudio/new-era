# typed: true
# frozen_string_literal: true

module Game
  class CoordinateService
    def index_to_coord(index:, width:)
      [
        (index % width) + 1,
        (index / width) + 1
      ]
    end
  end
end
