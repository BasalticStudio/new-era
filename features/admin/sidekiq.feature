Feature: Admin Sidekiq

  Scenario: Admin user can see sidekiq pages
    Given there are an admin user logged in
    When I open sidekiq manager page
    Then I can see "Sidekiq"
