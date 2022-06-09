# typed: false
# == Schema Information
#
# Table name: players
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
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
# frozen_string_literal: true

class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :player_quests, dependent: :restrict_with_error
  has_many :quests, through: :player_quests

  validate :restrict_beta_player_register, if: -> { Flipper.enabled?(:beta_mode) }

  private

  def restrict_beta_player_register
    return if RegisterAllowlist.new.include?(email)

    errors.add(:email, :not_in_beta_allowlist)
  end
end
