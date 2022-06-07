# frozen_string_literal: true

class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :type

      t.timestamps

      t.index %i[type id]
    end
  end
end
