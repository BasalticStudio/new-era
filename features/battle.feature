@preview
Feature: Battle

  Background:
    Given there are a player logged in
    And there are some maps
      | id | name   |
      | 1  | 台北市 |
      | 2  | 新北市 |
    And there are some areas
      | id   | map_id | name   | terrain_file_path   |
      | 2001 | 2      | 板橋區 | terrains/empty.json |
      | 2002 | 2      | 中和區 | terrains/with_npc.json |
    When I click "開始冒險"
    And I click "新北市"
    And I click "中和區"

  Scenario: Can start a new battle
    When I click "(1, 1)"
    Then I can see "戰鬥開始"

  Scenario: Can do attack
    When I click "(1, 1)"
    And I click "攻擊"
    Then I can see "造成 100 點傷害"
