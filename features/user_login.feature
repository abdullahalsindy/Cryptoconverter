Feature: The user is able to login



Scenario: User is on the login page
Given I am on the home page
When I click on the sign in link
Then I should be on the login page
#MWW

Scenario: User is on the sign up page
Given I am on the home page
When I click on the sign up link
Then I should be on the sign up page
#MWW

Scenario: User is on the sign up page
Given I am on the login page
When I click on the sign up link
Then I should be on the sign up page
#MWW

Scenario: User is registered
Given I am on the login page
And I enter my credentials
When I click on login
Then I should be on the user home page
#MWW

Scenario: User is not registered
Given I am on the login page
And I enter my credentials
When I click on login
Then I should see the user is not registered message
#MWW


