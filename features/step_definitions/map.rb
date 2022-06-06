# typed: false
# frozen_string_literal: true

Then('I can see the map list with') do |names|
  names.rows.each do |name, *_|
    expect(page).to have_text(name)
  end
end
