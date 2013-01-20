Feature: Account Creation
  Scenario Outline: Password validation
    Given I try to create an account with password "<Password>"
    Then I should see that the password is "<Valid or Invalid>"
    Examples: Too short
      | Password | Valid or Invalid |
      | abc      | invalid |
      | abc12    | invalid |
      | abc123   | valid   |
      | bobby    | invalid |
