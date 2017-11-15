require 'page-object'

class HelpPage 
	include PageObject

	button :button, :xpath=> "//nav/div/ul/li[10]/span/button"
	link :help_button, :xpath=> "//*[contains(text(),'Helpline')]"
    text_field :phone_field, :id=> "helpline_phone"
    button :submit, :type => "submit"
   
   def inv_help
      sleep 2
      @browser.text_field(:id, "helpline_phone").when_present
      @browser.text_field(:id, "helpline_phone").clear
      sleep 2
      @browser.text_field(:id, "helpline_phone").send_keys "g"

     @browser.button(:type, "submit").click
     sleep 3
   	 qt = @browser.span(:id, "helpline_phone-error").text
     sleep 2
       if qt.include? "Helpline number format is not correct"
          print qt
       else
          raise "#{qt} was not found"
       end
       sleep 1
     @browser.link(:xpath, "//div/div[2]/form/div[2]/a").click
      sleep 2
    end
end