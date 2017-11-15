  require 'page-object'

class EditPage 
include PageObject
  
  def edit_button
	sleep 5
	@browser.i(:xpath, "//div[3]/div/div/table/tbody/tr[2]/td[5]/a[4]/i").when_present.click
  end

  def edit_validate
      sleep 4
      $ele = @browser.table.tr(:index, 1).text
        if $ele.include? $email
         return " #{$ele} admin updated  successfully"
        else
         raise " updating admin failed"
       end 
   end


  
end

