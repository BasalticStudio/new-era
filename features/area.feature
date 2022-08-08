@preview
Feature: Area

  Background:
    Given there are a player logged in
    And there are some maps
      | id | name   |
      | 1  | 台北市 |
      | 2  | 新北市 |
    And there are some areas
      | id   | map_id | name   |
      | 2001 | 2      | 板橋區 |
      | 2002 | 2      | 中和區 |
    When I click "開始冒險"
    And I click "新北市"

  Scenario: Can open the area as tile map
    When I click "板橋區"
    Then I can see "(1, 1)"
