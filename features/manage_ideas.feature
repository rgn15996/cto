Feature: Innovation ideas
  In order to review the value generating ideas
  As a user
  I want to create, review and rate innovation ideas

  Scenario: User sees new innovation ideas when they sign in 
    Given a signed in user
      And another user creates an innovation idea with the title "Flying cars"
      And another user creates an innovation idea with the title "Meal in a pill"
    When the user visits the home page
    Then the user should see 2 innovation ideas displayed
      And the user should see an innovation idea with the title "Flying cars"
      And the user should see an innovation idea with the title "Meal in a pill"

  Scenario: User creates an innovation idea
    Given a signed in user
    When the user creates an innovation idea with title "Bingo!"
    And the user visits the home page
    Then the user should see an innovation idea with the title "Bingo!"
  
  Scenario: User creates another innovation idea
    Given a signed in user
    When the user creates an innovation idea with title "Excellent idea"
    And the user visits their profile page
    Then the user should see an innovation idea with the title "Excellent idea"
  
  Scenario: User views detail of their own idea
    Given a signed in user
    And the user creates an innovation idea with title "Excellent idea"
    When the user visits their profile page
    And the user clicks the link "Excellent idea"
    Then the user should see an innovation idea with the title "Excellent idea"
    And the user should see a link "Edit"

  Scenario: User views details of someone else's idea
    Given a signed in user
    And another user creates an innovation idea with the title "My big idea"
    When the user visits the home page
    And the user clicks the link "My big idea"
    Then the user should see an innovation idea with the title "My big idea"

  Scenario: User views unrated idea
    Given a signed in user
    And another user creates an innovation idea with the title "My big idea"
    When the user visits the idea's page
    Then the page should have content "You have not rated this idea"

  Scenario: User rates an idea
    Given a signed in user
    And another user creates an innovation idea with the title "My big idea"
    And the user gives the idea a rating of 3 stars
    And the user visits the idea's page
    Then the page should have content "You rated this idea"
