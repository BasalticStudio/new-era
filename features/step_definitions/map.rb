# typed: false
# frozen_string_literal: true

Given('there are some maps') do |table|
  table.hashes.each do |map|
    Map.create(map)
  end
end

Then('I can see the map list with') do |names|
  names.rows.each do |name, *_|
    expect(page).to have_text(name)
  end
end
