@preview
Feature: Map

  Background:
    Given there are a player logged in
    And there are some maps
      | name   |
      | 台北市 |
      | 新北市 |

  Scenario: Have a map list
    When I click "開始冒險"
    Then I can see the map list with
      | name   |
      | 台北市 |
      | 新北市 |

  Scenario:
    When I click "開始冒險"
    And I click "新北市"
    Then I can see the areas
      | name   |
      | 中山區 |
