@info
Feature:Manage Informatics
As a user i should be able to manage informatics

@smoke
@informatics
Scenario: manage informatics
When I click on manage informatics
And I click on add informatics button
When I enter the informatic name
When I click on view button
And I click on add details
And I give data
And I should able to save it 
# And I should be able to save successfully

@invalid_info
Scenario: invalid inf
When I click on manage informatics
And I click on add informatics button
When I enter informatic name