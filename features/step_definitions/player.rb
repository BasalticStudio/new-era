# typed: false
# frozen_string_literal: true

Given('there are some players') do |table|
  table.hashes.each do |player|
    Player.create(player)
  end
end

Given('there are some quests current player owned') do |table|
  quests = Quest.where(id: table.rows.map(&:first).map(&:to_i))
  @player.quests << quests
end
