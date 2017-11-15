require 'page-object'

class CreditPage 
	include PageObject

	def home_page
	 sleep 4
	 @browser.button