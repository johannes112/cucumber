Given(/^I am on the vega\-website$/) do
  visit('http://vega-direct.com')
end

When(/^I search for "([^"]*)"$/) do |search_product|
    find('#search').set(search_product)
    
    sbutton = page.find('#search_mini_form > div > button')
    sbutton.click()
end

Then(/^I should see "([^"]*)"$/) do |product_name|
    textbox = page.find('body > div.wrapper > div > div.cont > div.main.col2-left-layout > div.col-main > div:nth-child(8) > div.category-products > ul.products-grid.first.odd > li.item.first > h2 > a')
    expect(textbox).to have_text (product_name)
    print product_name
end