Feature: Index page, contact form

  Scenario: I add my contact information
    Given I am on the index page
    When I fill in "Name" with "Amber"
    And I fill in "Email" with "amber@amber.com"
    And I fill in "Twitter" with "heyamberwilkie"
    And I fill in "Company" with "Amber Inc."
    And I fill in "Role" with "President and CEO"
    And I fill in "Location" with "Holtermansgatan 1"
    And I fill in "Tell us about yourself!" with "I'm the best"
    And I click "Submit"
    Then I should see "Thanks! See you on the front end."
    And there should be "1" contact in the database