# typed: false
# frozen_string_literal: true

Given('there are some areas') do |table|
  table.hashes.each do |area|
    area['terrain'] = file_fixture(area.delete('terrain_file_path') || 'terrains/empty.json').read
    Area.create(area)
  end
end

Then('I can see the areas') do |table|
  table.rows.each do |name, *_|
    expect(page).to have_text(name)
  end
end
