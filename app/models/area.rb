# typed: false
# == Schema Information
#
# Table name: areas
#
#  id         :bigint           not null, primary key
#  name       :string
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
# frozen_string_literal: true

class Area < ApplicationRecord
  belongs_to :map
end
