# frozen_string_literal: true

class AddTrackableToPlayers < ActiveRecord::Migration[7.0]
  def change
    change_table :players, bulk: true do |t|
      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.index :last_sign_in_at
    end
  end
end
