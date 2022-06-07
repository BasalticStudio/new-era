@preview
Feature: Quest

  Background:
    Given there are a player logged in
    And there are some quests
      | id   | name           | type           |
      | 1    | 救援作戰（一） | Quests::Major  |
      | 1001 | 礦脈周邊清理   | Quests::Common |

  Scenario: I can see the quest list
    Given there are some quests current player owned
      | quest_id |
      | 1        |
    When I click "任務列表"
    Then I can see the owned quests
      | label                  |
      | 救援作戰（一） |

  Scenario: I can see the type in quest list
    Given there are some quests current player owned
      | quest_id |
      | 1        |
      | 1001     |
    When I click "任務列表"
    Then I can see the owned quests
      | label                  |
      | 【主線】救援作戰（一） |
      | 【一般】礦脈周邊清理   |
