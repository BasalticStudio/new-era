# frozen_string_literal: true

class CreatePlayerQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :player_quests do |t|
      t.references :player, null: false, foreign_key: true
      t.references :quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
