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

require 'rails_helper'

RSpec.describe Map do
  it { is_expected.to have_many(:areas) }
end
