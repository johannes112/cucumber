Given(/^I am on the Google homepage$/) do
  visit('https://www.google.com')
#  print current_url
end

When(/^I search for "(.*?)"$/) do |search_term|
  fill_in 'q', with: search_term
end

Then(/^I click the button for search$/) do
  #click_button 'btnK'
  #element=find('gs_htif0')
  element=find('#lst-ib')
  element.click
  #click_button(element)
end

Then(/^I should see "(.*?)"$/) do |expected_text|
  
end

