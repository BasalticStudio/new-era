@preview
Feature: Map

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

  Scenario: Have a map list
    Then I can see the map list with
      | name   |
      | 台北市 |
      | 新北市 |

  Scenario: Can back to main view
    When I click "返回"
    Then I can see "開始冒險"

  Scenario: Can open a map to see areas
    When I click "新北市"
    Then I can see the areas
      | name   |
      | 板橋區 |
      | 中和區 |

  Scenario: Can back to map list
    When I click "新北市"
    And I click "返回"
    Then I can see the map list with
      | name   |
      | 台北市 |
      | 新北市 |
