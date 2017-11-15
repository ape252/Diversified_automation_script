require 'page-object'

class DeletePage 
include PageObject

def del_button

	@browser.a(:xpath, "//div/table/tbody/tr[2]/td[5]/a[2]").when_present.click
        @browser.alert.ok
    end

 def is_deleted?
	   sleep 5
	   al =  @browser.table(:id, "t01").text
	   if al.include? $ele
	      raise "Failed"
	   else
	   	  return "#{$ele}---has been deleted"
	   end
end
end