require 'page-object'

class HolidayPage 
	include PageObject

def other
    @browser.button(:xpath, "//nav/div/ul/li[10]/span/button").click
    sleep 1
end

def man_hol
	@browser.a(:xpath, "//nav/div/ul/li[10]/span/ul/li[1]/a").click
end

def add_hol
	
    @browser.a(:xpath, "//div[2]/div/div/div/div/a[2]").click

end

def name
	sleep 1
	@browser.input(:id, "fname").send_keys "bday"
	@browser.input(:id, "lname").send_keys "1/9/2017"

end   
 
 def sub
 	@browser.button(:type, "submit").click
 end

def inv_hol

	 sleep 2
	qq = @browser.div(:xpath, "//div[2]/form/div[1]/div[1]").text
   sleep 5
      if qq.include? "Name has already been taken"
          print qq
      else
          raise "#{qq} was not found"
      end
      sleep 1
     @browser.link(:xpath, "//div/div[2]/form/div[2]/a").click
     sleep 2
end    


end                                                      