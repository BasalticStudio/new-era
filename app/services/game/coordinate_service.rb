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

    def coord_to_index(x:, y:, width:) # rubocop:disable Naming/MethodParameterName
      (x - 1) + ((y - 1) * width)
    end
  end
end
