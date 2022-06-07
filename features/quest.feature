@preview
Feature: Quest

  Scenario: I can see the quest list
    Given there are a player logged in
    When I click "任務列表"
    Then I can see the owned quests
      | name           |
      | 救援作戰（一） |
