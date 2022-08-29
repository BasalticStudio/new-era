# typed: false
# frozen_string_literal: true

# == Schema Information
#
# Table name: players
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string           default("")
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_players_on_email                 (email) UNIQUE
#  index_players_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe Player, type: :model do
  it { is_expected.to have_many(:player_quests) }
  it { is_expected.to have_many(:quests).through(:player_quests) }
end
