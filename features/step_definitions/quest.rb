# typed: false
# frozen_string_literal: true

Then('I can see the owned quests') do |table|
  table.rows.each do |name, *_|
    expect(page).to have_text(name)
  end
end
