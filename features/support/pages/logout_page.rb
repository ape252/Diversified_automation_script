require 'page-object'
class LogoutPage
  include PageObject

	def logout
		sleep 5
			@browser.a(:xpath, "//nav/div/ul/li[11]/a").when_present.click
			# @browser.a(:xpath, "//div[1]/div/div/div/div/ul/li/a").when_present.click
		end

	def logout_success?
		aq = @browser.p(:xpath, "//div[2]/div/div/p").text
	    if aq.include? "You have logged out successfully!"
	        return "#{aq}"
	    else
		    raise "not successfull"
	    end
	end
end