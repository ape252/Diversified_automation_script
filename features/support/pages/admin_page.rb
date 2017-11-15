require 'page-object'

class AdminPage 
	include PageObject
  
  # page_url Common.get_url("home")

   link :man_button, :xpath=> "//nav/div/ul/li[2]/a"
   link :add_button, :xpath=> "//*[contains(text(),'Add Admin')]"
   text_field :firstname_id, :id => "fname"
   text_field :secondname_id, :id => "lname"
   text_field :depname_id, :id => "dname"
   text_field :email_name, :name => "user[email]"
   text_field :pass_id, :id => "user_password"
   text_field :confpass_id, :id => "user_password_confirmation"
   button :subm, :type => "submit"

   def validate
      sleep 4
      $ele = @browser.table.tr(:index, 1).text
        if $ele.include? Common.man_admin('email')
         return " #{$ele} admin added successfully"
        else
         raise " adding admin failed"
       end 
   end




 def invalid_email
    @browser.input(:name, "user[email]").send_keys "apeksha123"
    @browser.input(:id, "user_password").send_keys "qwinix123"
    sleep 2
    qw = @browser.span(:id, "ename-error").text
      if qw.include? "Email format is not correct"
          print qw
      else
          raise "#{qw} was not found"
      end
      sleep 1
    @browser.link(:xpath, "//div[2]/form/div/div[2]/a").click
    sleep 2
     
  end


end