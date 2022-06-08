# typed: false
# frozen_string_literal: true

Given('there are a player logged in') do
  email = 'player@example.com'
  password = '123456+999'

  @player = Player.create(email: email, password: password)

  visit new_player_session_path
  fill_in 'player_email', with: email
  fill_in 'player_password', with: password
  click_on '登入'

  visit game_root_path
end

When('I visit {string}') do |path|
  visit path
end

When('I open landing page') do
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
