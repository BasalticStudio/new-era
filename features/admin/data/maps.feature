Feature: Admin Map Data

  Background:
    Given there are an admin user logged in
    And there are some maps
      | id | name   |
      | 1  | 台北市 |
      | 2  | 新北市 |
    When I open admin dashboard

  Scenario: I can see a list of maps
    When I click "地圖資料"
    Then I can see the map list with
      | name   |
      | 台北市 |
      | 新北市 |
