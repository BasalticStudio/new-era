# typed: true
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
  belongs_to :map

  composed_of :terrain,
              class_name: 'Terrain',
              mapping: %w[terrain tiles],
              converter: proc { |data| Terrain.from(data) }
end
