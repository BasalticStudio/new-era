Feature: Admin Game Data

  Scenario: I can refresh game data
    Given there are an admin user logged in
    When I open admin dashboard
    And I click "更新遊戲資料"
    Then I can see "遊戲資料開始更新"
