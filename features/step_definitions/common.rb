# typed: false
# frozen_string_literal: true

When('I visit {string}') do |path|
  visit path
end

When('I oepn landing page') do
  visit root_path
end

Then('I can see {string}') do |text|
  expect(page).to have_text(text)
end

When('I click {string}') do |label|
  click_on(label)
end

When('I fill {string} form') do |form_name, table|
  table.hashes.each do |row|
    fill_in("#{form_name}_#{row['field']}", with: row['value'])
  end
end
