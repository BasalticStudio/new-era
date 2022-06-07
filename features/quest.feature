@preview
Feature: Quest

  Scenario: I can see the quest list
    Given there are a player logged in
    And there are some quests
      | id   | name           | type           |
      | 1    | 救援作戰（一） | Quests::Major  |
      | 1001 | 礦脈周邊清理   | Quests::Common |
    And there are some quests current player owned
      | quest_id |
      | 1        |
    When I click "任務列表"
    Then I can see the owned quests
      | label                  |
      | 【主線】救援作戰（一） |
