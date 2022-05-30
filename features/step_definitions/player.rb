# typed: false
# frozen_string_literal: true

Given('there are some players') do |table|
  table.hashes.each do |player|
    Player.create(player)
  end
end
