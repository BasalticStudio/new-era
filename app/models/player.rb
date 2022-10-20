# typed: false
# frozen_string_literal: true

# == Schema Information
#
# Table name: players
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  name                   :string           default("")
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_players_on_email                 (email) UNIQUE
#  index_players_on_last_sign_in_at       (last_sign_in_at)
#  index_players_on_reset_password_token  (reset_password_token) UNIQUE
#

class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :player_quests, dependent: :restrict_with_error
  has_many :quests, through: :player_quests

  validate :restrict_beta_player_register, on: :create, if: -> { Flipper.enabled?(:beta_mode) }

  private

  def restrict_beta_player_register
    return if NewEra::Container.resolve('register_allowlist').include?(email)

    errors.add(:email, :not_in_beta_allowlist)
  end
end
