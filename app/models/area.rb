# typed: false
# frozen_string_literal: true

# == Schema Information
#
# Table name: areas
#
#  id         :bigint           not null, primary key
#  name       :string
#  terrain    :jsonb
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  map_id     :bigint           not null
#
# Indexes
#
#  index_areas_on_map_id  (map_id)
#
# Foreign Keys
#
#  fk_rails_...  (map_id => maps.id)
#

class Area < ApplicationRecord
  MAX_WIDTH = 25
  MAX_HEIGHT = 25

  belongs_to :map

  validate :terrain_format

  def terrain=(data)
    self[:terrain] =
      case data
      when String then JSON.parse(data)
      else
        data
      end
  rescue JSON::ParserError, TypeError
    self[:terrain] = Array.new(MAX_WIDTH * MAX_HEIGHT, {})
  end

  private

  def terrain_format
    return if terrain.is_a?(Array)

    errors.add(:terrain, :not_array)
  end
end
