# frozen_string_literal: true

class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.references :map, null: false, foreign_key: true

      t.timestamps
    end
  end
end
