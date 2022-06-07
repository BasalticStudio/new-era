# typed: false
# frozen_string_literal: true

# == Schema Information
#
# Table name: maps
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Map < ApplicationRecord
  has_many :areas, dependent: :restrict_with_exception
end
