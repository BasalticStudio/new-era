# typed: false
# == Schema Information
#
# Table name: player_quests
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  player_id  :bigint           not null
#  quest_id   :bigint           not null
#
# Indexes
#
#  index_player_quests_on_player_id  (player_id)
#  index_player_quests_on_quest_id   (quest_id)
#
# Foreign Keys
#
#  fk_rails_...  (player_id => players.id)
#  fk_rails_...  (quest_id => quests.id)
#
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlayerQuest do
  it { is_expected.to belong_to(:player) }
  it { is_expected.to belong_to(:quest) }
end
