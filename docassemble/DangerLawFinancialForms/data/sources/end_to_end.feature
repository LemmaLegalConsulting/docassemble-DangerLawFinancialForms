# Seeded with ALDashboard static fixture generator; reviewed against interview YAML.
@e2e
Feature: Complete DangerLawFinancialForms

  Scenario: An applicant at the income ceiling receives the long-form ending
    Given I start the interview at "main.yml"
    And the maximum seconds for each step is 120
    When I get to "Kickout more than 75,000" with this data:
      | var | value |
      | gross_annual_income | 75000 |
    Then the question id should be "Kickout more than 75,000"
    And I should see the phrase "You need to use the long form Financial Statement"
