Feature: Admin Map Data

  Background:
    Given there are an admin user logged in
    And there are some maps
      | id | name   |
      | 1  | 台北市 |
    And there are some areas
      | id   | map_id | name   |
      | 1001 | 1      | 板橋區 |
      | 1002 | 1      | 中和區 |
    When I open admin dashboard

  Scenario: I can see a list of maps
    When I click "地區資料"
    Then I can see the areas
      | name   |
      | 板橋區 |
      | 中和區 |
