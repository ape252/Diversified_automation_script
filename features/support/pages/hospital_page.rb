require 'page-object'

class HospitalPage 
	include PageObject


def man_hod
	
	@browser.a(:xpath, "//div/ul/li[4]/a").click
end

def add_hos
	@browser.a(:xpath, "//*[contains(text(),'Add Hospital')]").when_present.click

end


def del
sleep 1
@browser.a(:xpath, "//div[2]/fieldset/div[4]/strong/a").click

end

def enter_data

	sleep 2
	@browser.input(:id, "hospital_name").send_keys "cloud 7"

	@browser.input(:id, "hospital_short_name").send_keys "cl7"


	@browser.input(:id, "hospital_specialities_attributes_0_name").send_keys "nuro"

	@browser.input(:placeholder, "Weekday phone").send_keys "1234567890"

	@browser.input(:id, "fileupload").send_keys "//home/apeksha/Pictures/hospital-corridor-interior-design-rendering.jpg"

	@browser.input(:id, "hospital_image").send_keys "//home/apeksha/Pictures/hospital-corridor-150608.jpg"

	@browser.input(:placeholder, "From").click
	sleep 2
	@browser.div(:xpath, "//div[1]/div[2]/div/div[1]/div[872]").fire_event :click


	@browser.input(:placeholder, "To").click

	sleep 2

	@browser.div(:xpath, "//div[3]/div[2]/div/div[1]/div[1014]").fire_event :click
	sleep 1

end

def save

	@browser.button(:id, "ink").click

end

def inv_dat


	sleep 2
	@browser.input(:id, "hospital_name").send_keys "cloud 7"

	@browser.input(:id, "hospital_short_name").send_keys "cl7"


	@browser.input(:id, "hospital_specialities_attributes_0_name").send_keys "nuro"

	@browser.input(:placeholder, "Weekday phone").send_keys "1234567890"

	@browser.input(:id, "fileupload").send_keys "//home/apeksha/Pictures/test.jpg"
	@browser.input(:id, "hospital_image").send_keys "//home/apeksha/Pictures/hospital-corridor-150608.jpg"

	@browser.input(:placeholder, "From").click
	sleep 2
	@browser.div(:xpath, "//div[1]/div[2]/div/div[1]/div[872]").fire_event :click


	@browser.input(:placeholder, "To").click

	sleep 2

	@browser.div(:xpath, "//div[3]/div[2]/div/div[1]/div[1014]").fire_event :click
	sleep 1

    
	@browser.button(:id, "ink").click



   qa = @browser.p(:xpath, "//div[1]/div/div/p").text
   sleep 5
      if qa.include? "Hospital image should be less than 1MB"
          print qa
      else
          raise "#{qa} was not found"
      end
end    


end