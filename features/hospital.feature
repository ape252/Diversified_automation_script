@hhospital
Feature:Manage Hospital
As a user i should be able to manage hospital

@smoke
@hospital
Scenario: manage hospital
When I click on manage hospital button
And I click on add hospital button
And I enter all credentials
And I save data

@invalid_hospital
Scenario: invalid hospi
When I click on manage hospital button
And I click on add hospital button
And I enter  credentials
# And I click ok 
