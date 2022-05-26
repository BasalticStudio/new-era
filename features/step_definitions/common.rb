# frozen_string_literal: true

When('I visit {string}') do |path|
  visit path
end

Then('I can see {string}') do |text|
  expect(page).to have_text(text)
end
