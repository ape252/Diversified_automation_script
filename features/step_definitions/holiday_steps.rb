When(/^I click on button$/) do
  on HolidayPage do |jage|
   jage.other
   sleep 1
end
end



When(/^I click on manage holiday button$/) do
  on HolidayPage do |jage|
   jage.man_hol
   sleep 1
end
end


When(/^I click on add holiday button$/) do
	  on HolidayPage do |jage|
   jage.add_hol
sleep 2
  end

  end

When(/^I enter data$/) do
	 on HolidayPage do |jage|
   jage.name
end 
end

When(/^I click on save$/) do
 on HolidayPage do |jage|
   jage.sub
   sleep 1
end
end

Then(/^I should be able to save successfuly$/) do

end


Then(/^I should be able to see error msg$/) do
  on HolidayPage do |jage|
    jage.inv_hol
end
end
