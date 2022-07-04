# frozen_string_literal: true

class AddNameToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :name, :string, default: ''
  end
end
