When(/^I click on others button$/) do
	sleep 2
	on HelpPage do |variable|
variable.button
sleep 2
end
  
end

When(/^I select helpine option$/) do
	on HelpPage do |variable|
variable.help_button
sleep 2
end
 
end

When(/^I update the helpline number$/) do
	on HelpPage do |variable|
variable.phone_field =  Common.add_helpline('number')
sleep 2
end
end

When(/^i click on update button$/) do
	on HelpPage do |variable|
variable.submit
sleep 5
end
end


When(/^I give number$/) do
	on HelpPage do |variable|
variable.inv_help
sleep 2
end
end
