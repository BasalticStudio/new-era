# typed: false
# frozen_string_literal: true

When('I click {string} in table row {string}') do |text, row|
  within :xpath, "//tr[contains(., '#{row}')]" do
    click_on text
  end
end
