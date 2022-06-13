Feature: Admin Allowlist

  Scenario: I can refresh beta allowlist
    Given there are an admin user logged in
    When I open admin dashboard
    And I click "更新測試名單"
    Then I can see "更新測試名單完畢"
