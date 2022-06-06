Feature: Admin/Flipper

  Scenario: Admin user can see flipper pages
    Given there are an admin user logged in
    When I open flipper manager page
    Then I can see "Features"
