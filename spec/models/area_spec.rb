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

require 'rails_helper'

RSpec.describe Area, type: :model do
  it { is_expected.to belong_to(:map) }
end
