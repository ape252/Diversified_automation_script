require 'page-object'

class SubPage 
	include PageObject

   link :man_sub, :xpath=> "//nav/div/ul/li[8]/a"
   
   link :add_button, :xpath=> "//*[contains(text(),'Add Speciality')]"
   
   sleep 1

   link :del, :xpath=> "//div[2]/fieldset/div[4]/strong/a"
   sleep 1

    text_field :full_name, :id => "subspeciality_name"
    sleep 1
   text_field :short_name, :id => "subspeciality_short_name"
   sleep 1
   text_field :subimage, :xpath => "//div[2]/div/div[3]/div[4]/div/input"
   sleep 1
   text_field :name, :id => "subspeciality_departments_attributes_0_name"
   text_field :weekday_phone, :placeholder => "Weekday phone"
   
def time

   	@browser.input(:placeholder, "From").click
     sleep 2
     @browser.div(:xpath, "//div[1]/div[2]/div/div[1]/div[868]").fire_event :click


     @browser.input(:placeholder, "To").click 

      sleep 2

     @browser.div(:xpath, "//div[4]/div[2]/div/div[1]/div[1130]").fire_event :click


end

button :submit_but, :value => "Submit"

def inv_sub
  
  @browser.button(:value, "Submit").click

  qs = @browser.p(:xpath, "//div[1]/div/div/p").text
   sleep 2
      if qs.include? 'Departments phones - "from time" can\'t be blank. Departments phones - "to time" can\'t be blank'          
        print qs
      else
        raise "#{qs} was not found"
      end
      sleep 1
  @browser.link(:xpath, "//div[2]/div/div[4]/a[2]").click   
    sleep 2
end

end