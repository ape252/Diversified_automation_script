@hol
Feature:Manage Holiday
As a user i should be able to manage holiday

@smoke
@holiday
Scenario: manage holiday
When I click on button
When I click on manage holiday button
And  I click on add holiday button
And I enter data
And I click on save 
Then I should be able to save successfuly
 
@invalid_holiday
Scenario: invalid holid
When I click on button
When I click on manage holiday button
And  I click on add holiday button
And I enter data
And I click on save 
Then I should be able to see error msg
