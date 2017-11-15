When(/^I click on subspeciality button$/) do
	on SubPage do |vari|
vari.man_sub
sleep 2
end

end

When(/^I click on add sub button$/) do
		on SubPage do |vari|
vari.add_button
end

 
end

When(/^I give all data$/) do
	on SubPage do |vari|
vari.del
sleep 2
vari.full_name =  Common.manage_subspeciality('subspecialityname')
vari.short_name =  Common.manage_subspeciality('sname')
vari.subimage = "//home/apeksha/Pictures/hospital-corridor-interior-design-rendering.jpg"
vari.name =  Common.manage_subspeciality('hospitalname')
vari.weekday_phone =  Common.manage_subspeciality('weekdayphone')
sleep 1
vari.time

end
 
end

When(/^i should be able to save it successfully$/) do
	on SubPage do |vari|
		vari.submit_but
	end
 
end

When(/^I give dat$/) do
	on SubPage do |vari|
	vari.del
	sleep 2
	vari.full_name =  Common.manage_subspeciality('subspecialityname')
	vari.short_name =  Common.manage_subspeciality('sname')
	vari.subimage = "//home/apeksha/Pictures/hospital-corridor-interior-design-rendering.jpg"
	vari.name =  Common.manage_subspeciality('hospitalname')
	vari.weekday_phone =  Common.manage_subspeciality('weekdayphone')
	sleep 1
	vari.inv_sub

end
end