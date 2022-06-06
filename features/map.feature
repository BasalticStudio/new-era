Feature: Map

  @preview
  Scenario: Have a map list
    Given there are a player logged in
    When I click "開始冒險"
    Then I can see the map list with
      | name   |
      | 台北市 |
