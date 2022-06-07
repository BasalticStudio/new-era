# typed: false
# == Schema Information
#
# Table name: maps
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# frozen_string_literal: true

FactoryBot.define do
  factory :map
end
