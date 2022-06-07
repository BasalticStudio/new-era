# typed: false
# frozen_string_literal: true

Given('there are some areas') do |table|
  table.hashes.each do |area|
    Area.create(area)
  end
end

Then('I can see the areas') do |table|
  table.rows.each do |name, *_|
    expect(page).to have_text(name)
  end
end
