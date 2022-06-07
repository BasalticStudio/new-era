# frozen_string_literal: true

class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :name

      t.timestamps
    end
  end
end
