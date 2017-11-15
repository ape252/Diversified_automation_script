When(/^I click on manage admin$/) do
	on AdminPage do |cage|
cage.man_button
sleep 2
end
end
  

When(/^I click on add admin$/) do
	on AdminPage do |cage|
cage.add_button
sleep 2
end
end

Then(/^I enter all data$/) do
on AdminPage do |cage|
cage.firstname_id =  Common.man_admin('firstname')
cage.secondname_id =  Common.man_admin('secondname')
cage.depname_id =  Common.man_admin('depname')
sleep 2
cage.email_name =  Common.man_admin('email')
sleep 2
cage.pass_id =  Common.man_admin('pass')
cage.confpass_id =  Common.man_admin('confpass')
 end
 end

Then(/^I click on save button$/) do
on AdminPage do |page|
	page.subm
  p	page.validate
 end
 end

# When(/^I click manage admin$/) do
# 	on AdminPage do |cage|
# cage.man_button
# sleep 2
#  end
#  end

# When(/^I click add admin$/) do
# on AdminPage do |cage|
# cage.add_button
# sleep 2
#  end  
#  end

When(/^when i enter invalid data$/) do
 sleep 2
  on AdminPage do |cage|
  cage.invalid_email
 end  	
 end

Then(/^it should show error messsage$/) do
# 	on AdminPage do |cage|
# cage.val
# sleep 2
#  end  	
end
 