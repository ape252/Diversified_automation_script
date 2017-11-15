@speci
Feature: Manage subspeciality
As a user i should be able to manage subspeciality

@smoke
@subs
Scenario: manage subspeciality
When I click on subspeciality button
And I click on add sub button
And I give all data
# When I click on submit button
And i should be able to save it successfully

@invalid_sub
Scenario: invalid speciality
When I click on subspeciality button
And I click on add sub button
And I give dat
# When I click on submit button