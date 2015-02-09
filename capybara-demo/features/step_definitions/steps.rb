Given(/^I am on the Google homepage$/) do
  visit('http:www.google.com') 
end

When(/^I search for "(.*?)"$/) do |search_term|
  fill_in 'gbqfq', with: search_term
end

Then(/^I click the button for search$/) do
  click_button 'gbqfb'
end

Then(/^I should see "(.*?)"$/) do |expected_text|
  page.should have_content(expected_text)
end

