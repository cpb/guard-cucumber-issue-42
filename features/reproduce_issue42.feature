Feature: Error when running with Rails4

  Scenario: Guard and cucumber working together, fresh rails project
    Given I visit "http://localhost:3000/"
    When I click "About your application's environment"
    Then I should see "1.9.3"
