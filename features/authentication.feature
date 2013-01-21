Feature: Authentication

  Scenario: Unsuccessful sign-in
    Given a user visits the signin page
    When the user submits invalid signin information
    Then the user should see an error message

  Scenario: Successful signin
    Given a user visits the signin page
      And the user has an account
    When the user submits valid signin information
    Then the user should see the signed in homepage
      And the user should see a signout link

  Scenario: Another successful sign in
    Given a signed in user
    When the user visits their profile page
    Then the user should see their initiatives displayed