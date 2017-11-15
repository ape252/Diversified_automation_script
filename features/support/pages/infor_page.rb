require 'page-object'

class InformticsPage 
	include PageObject

link :man_infor, :xpath=> "//nav/div/ul/li[6]/a"
link :add_button, :xpath=> "//div[2]/div/div/div/div[2]/a[2]"
text_field :infor_name, :id => "fname"
button :save, :value => "Save"
link :click_link, :xpath=> "//div[3]/div/div/div/div/div/div[1]/a[4]"
link :add_det, :xpath=> "//*[contains(text(),'Add Details')]"
text_field :infor_title, :id=> "informatics_detail_name"
# body :infor_desc, :id => "tinymce"
button :sub, :type => "submit"
link :check, :xpath=> "//div[3]/div/div/div/div/div/a"

def inv_info
    @browser.button(:type, "submit").click
	sleep 2

	qz = @browser.span(:id, "fname-error").text
   sleep 2
      if qz.include? "Name is required"
          print qz
      else
          raise "#{qz} was not found"
      end
      sleep 1
    @browser.link(:xpath, "//div/div[2]/form/div[2]/a").click
     sleep 2
end

end