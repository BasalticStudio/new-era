# typed: false
# frozen_string_literal: true

Given('there are some quests') do |table|
  table.hashes.each do |quest|
    Quest.create(quest)
  end
end

Then('I can see the owned quests') do |table|
  table.rows.each do |name, *_|
    expect(page).to have_text(name)
  end
end
