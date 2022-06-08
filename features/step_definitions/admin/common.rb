# typed: false
# frozen_string_literal: true

Given('there are an admin user logged in') do
  email = 'admin@example.com'
  password = '123456+999'

  @admin = AdminUser.create(email: email, password: password)

  visit new_admin_user_session_path
  fill_in 'admin_user_email', with: email
  fill_in 'admin_user_password', with: password
  click_on '登入'
end

When('I open flipper manager page') do
  visit admin_flipper_path
end
