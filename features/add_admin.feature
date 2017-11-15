@addmin
Feature:Add admin
As a user i should be able to adda new admin

@smoke
@admin
Scenario: Add admin
When I click on manage admin
And I click on add admin 
Then I enter all data
Then I click on save button 

@invalid_admin
Scenario: invalid_ad
When I click on manage admin
And I click on add admin
And when i enter invalid data
Then it should show error messsage