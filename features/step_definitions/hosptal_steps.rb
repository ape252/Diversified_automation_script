


When(/^I click on manage hospital button$/) do
	on HospitalPage do |zage|
   zage.man_hod
end
end

When(/^I click on add hospital button$/) do
	on HospitalPage do |zage|
   zage.add_hos
end
end



When(/^I enter all credentials$/) do
	on HospitalPage do |zage|
		zage.del
   zage.enter_data
   sleep 5
end
end

When(/^I save data$/) do
	on HospitalPage do |zage|
   zage.save
end
end


When(/^I enter  credentials$/) do
	on HospitalPage do |zage|
	zage.del
	sleep 2	
   zage.inv_dat
end
end

# When(/^I click ok$/) do
 
# end

