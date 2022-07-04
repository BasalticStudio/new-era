Feature: Tutorial
  Background:
    Given there are some players
      | email              | password     |
      | player@example.com | example+1234 |
    When I open landing page
    And I click "開始遊戲"
    And I fill "player" form
      | field    | value              |
      | email    | player@example.com |
      | password | example+1234       |
    And I click "登入"


  Scenario: Player should setup player name
    Then I can see "你的名字是？"

  Scenario: Player can fill player name and enter the game
    When I fill "player" form
      | field | value    |
      | name  | 蒼時弦也 |
    And I click "繼續"
    Then I can see "歡迎回來，蒼時弦也"
