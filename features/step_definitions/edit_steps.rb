When(/^I click on edit button$/) do
	on EditPage do |bage|
    bage.edit_button
end
end


When(/^I edit the Admin fields with (.+) and (.+)$/) do |firstname, lastname|
on AdminPage do |cage|
sleep 2
cage.firstname_id =  firstname
sleep 2
cage.secondname_id =  lastname
# sleep 2
# cage.email_name =  email
end
end

Then(/^I change the (.+)$/) do |email|
 on AdminPage do |cage|
	cage.email_name =  email
	$email = email
	sleep 2
end
end


Then(/^I click on update button$/) do
on LoginPage do |page|
page.sub_type
on EditPage do |page|
p page.edit_validate
end
end
end
