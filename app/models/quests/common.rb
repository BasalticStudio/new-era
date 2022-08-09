# typed: true
# == Schema Information
#
# Table name: quests
#
#  id         :bigint           not null, primary key
#  name       :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_quests_on_type_and_id  (type,id)
#
# frozen_string_literal: true

module Quests
  class Common < Quest
  end
end
