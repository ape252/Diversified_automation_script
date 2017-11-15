@login
Feature: Divrad login
As a user
I should be able to login successfully


@invalid
Scenario: invalid login
# When I click on logout 
Given I am on divrad website 
When I enter invalid credentials 
And I click on submit button
@smoke
@valid
Scenario: valid login
Given I am on divrad website 
When I enter valid credentials 
And I click on submit button
Then I should be able to login successfully


