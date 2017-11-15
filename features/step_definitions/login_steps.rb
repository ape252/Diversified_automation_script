Given(/^I am on divrad website$/) do
  visit LoginPage
end

When(/^I enter valid credentials$/) do
on LoginPage do |page|
page.email_id =  Common.normal_user('username')
page.pass_id =  Common.normal_user('pwd')
end
end

When(/^I click on submit button$/) do
on LoginPage do |page|
 page.sub_type
 sleep 2
end
end

Then(/^I should be able to login successfully$/) do
	
end



# When(/^I click on logout$/) do
	
# end

When(/^I enter invalid credentials$/) do
	on LoginPage do |page|
      page.invalid
      sleep 2
 end
end



