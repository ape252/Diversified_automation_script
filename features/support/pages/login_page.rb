require 'page-object'

class LoginPage 
	include PageObject
  
  page_url Common.get_url("home")

  text_field :email_id, :id => "email"
  text_field :pass_id, :id => "password"
  button :sub_type, :type => "submit"

  def invalid
  	    # @browser.a(:xpath, "//nav/div/ul/li[11]/a").when_present.click
  	    sleep 2
		@browser.input(:id, "email").send_keys "admin@qwinixtech.com"
		@browser.input(:id, "password").send_keys "qwinix1234"
		@browser.button(:type, "submit").click
        
		az = @browser.p(:xpath, "//div[2]/div/div/p").text
		sleep 5
	    if az.include? "Invalid email or password"
	    	sleep 5
	         print az
	    else
		    raise "not successful"
	    end

	end
end

