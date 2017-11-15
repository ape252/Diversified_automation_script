When(/^I click on delete button of a paricular admin$/) do
  on DeletePage do |mage|
    mage.del_button
end
end

Then(/^I should be able to delete an admin$/) do
  on DeletePage do |mage|
    mage.is_deleted?

end
end
