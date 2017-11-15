Feature:Edit admin
As a user i should be able to edit admin information

@smoke
@edit
Scenario Outline: edit admin
When I click on edit button
And I edit the Admin fields with <firstname> and  <lastname> 
Then I change the <email>
Then I click on update button

Examples:
|firstname|lastname|email|
|Ape      |kaa     |kaa@kaa.com|
