Feature: Login feature

  Scenario: As a valid user I can search ip location
    Given I go to page
    And I enter ip "8.8.8.8"
    When I press search
    Then I see IP Location
