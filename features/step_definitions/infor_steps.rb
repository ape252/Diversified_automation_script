When(/^I click on manage informatics$/) do
	on InformticsPage do |var|
		var.man_infor
sleep 2
end
end

When(/^I click on add informatics button$/) do
	on InformticsPage do |var|
		var.add_button
		sleep 2
end

end

When(/^I enter the informatic name$/) do
	on InformticsPage do |var|
var.infor_name =  Common.manage_informatics('informaticname')
var.save
sleep 5
    end

   end

When(/^I click on view button$/) do
	on InformticsPage do |var|
		var.click_link
		sleep 2
	end
    end

When(/^I click on add details$/) do
	on InformticsPage do |var|
		var.add_det
		sleep 5
	end
end

When(/^I give data$/) do
	on InformticsPage do |var|
	var.infor_title =  Common.manage_informatics('informatictitle')
	sleep 2
	# var.infor_desc =  Common.manage_informatics('description')
 #    sleep 2
  end
  end


When(/^I should able to save it$/) do
on InformticsPage do |var|
	var.sub
	sleep 2
end
end

# When(/^I should be able to save successfully$/) do
# 	on InformticsPage do |var|
# 		var.check
# 	end
# end

When(/^I enter informatic name$/) do
	on InformticsPage do |var|
var.inv_info
sleep 5
    end

   end