Feature: Register

  Scenario: Player can register an account
    When I open landing page
    And I click "開始遊戲"
    And I click "Sign up"
    And I fill "player" form
      | field                 | value              |
      | email                 | player@example.com |
      | password              | example+1234       |
      | password_confirmation | example+1234       |
    And I click "Sign up"
    Then I can see "開始任務"

  Scenario: Player can login with an account
    Given there are some players
      | email              | password     |
      | player@example.com | example+1234 |
    When I open landing page
    And I click "開始遊戲"
    And I fill "player" form
      | field    | value              |
      | email    | player@example.com |
      | password | example+1234       |
    And I click "Log in"
    Then I can see "開始任務"
