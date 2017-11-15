When(/^i click on logout button$/) do
 
  on LogoutPage do |tage|
       tage.logout
end
end

Then(/^I should be able to logout successfully$/) do
	on LogoutPage do |tage|
   p tage.logout_success?
end
end
