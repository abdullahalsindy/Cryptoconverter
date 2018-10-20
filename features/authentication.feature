Feature: The user is able to login

Scenario: User is on the login page
Given I am on the home page
When I click on the "Sign In" link
Then I should be on the "/users/sign_in" page
#MWW

Scenario: User is on the sign up page from home
Given I am on the home page
When I click on the "Sign Up!" link
Then I should be on the "/users/sign_up" page
#MWW

Scenario: User is on the sign up page from login
Given I am on the login page
When I click on the "Sign up" link
Then I should be on the "/users/sign_up" page
#MWW

Scenario: User is registered
Given I am on the login page
And I enter my credentials
When I click on user "Log in"
Then I should be on the "/" page2
#MWW

Scenario: User is not registered
Given I am on the login page
And I enter invalid credentials
When I click on "Log in"
Then I should see the "Invalid Email or password" message
#MWW

Scenario: User enters only a user name
Given I am on the login page
And I enter only a user name
When I click on "Log in"
Then I should see the "Invalid Email or password" message
#MWW

Scenario: User enters only a password
Given I am on the login page
And I enter only a password
When I click on "Log in"
Then I should see the "Invalid Email or password" message
#MWW

Scenario: User enters only a password
Given I am on the login page
And I enter only a password
When I click on "Log in"
Then I should see the "Invalid Email or password" message
#MWW

