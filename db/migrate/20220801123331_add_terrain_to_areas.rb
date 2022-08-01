# frozen_string_literal: true

class AddTerrainToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :terrain, :jsonb
  end
end
