Feature: Innovation ideas
  In order to review the value generating ideas
  As a user
  I want to see innovation ideas that have been added

  Scenario: User sees new innovation ideas when they sign in 
    Given a signed in user
      And an innovation idea with the title "Flying cars"
      And an innovation idea with the title "Meal in a pill"
    When the user visits the home page
    Then the user should see 2 innovation ideas displayed
      And the user should see an innovation idea with the title "Flying cars"
      And the user should see an innovation idea with the title "Meal in a pill"


  
  
  
