
Given(/^I am on the vega\-website$/) do
  #:driver => :iphone
  #puts "Set Header"
  #page.driver.browser.header 'emnlpc', '1'
  cookieAll = page.driver.browser.manage.all_cookies
  puts cookieAll
  visit('http://vega-direct.com')
  puts current_url
  page.driver.browser.manage.add_cookie(:name => 'emnlpc', :value => '1', :domain => "www.vega-direct.com")
  #page.driver.browser.manage.add_cookie(:name => 'emnlpc', :value => '1')
  cookiel = page.driver.browser.manage.cookie_named('emnlpc')
  puts cookiel
  #page.driver.browser.manage.add_cookie(:name => 'emnlpc', :value => '1')
  sleep 6
  page.save_screenshot("./img/cookieVega.png")
  expect(current_url).to eq('http://www.vega-direct.com/')
  page.driver.browser.manage.add_cookie(:name => 'emnlpc', :value => '1', :domain => "www.vega-direct.com")
  co = page.driver.browser.manage.cookie_named('emnlpc')
  puts co
  cookieAlls = page.driver.browser.manage.all_cookies
  puts cookieAlls
end

When(/^I search for "([^"]*)"$/) do |search_product|
    find('#search').set(search_product)
    if ENV['HEADLESS'] == 'poltergeist'
      
      co=page.driver.cookies
      puts "Cookies: \n"+co.to_s+"\n"
      page.save_screenshot("./img/vega.png")
    end
    sbutton = page.find('#search_mini_form > div > button')
    sbutton.click()
end

Then(/^I should see "([^"]*)"$/) do |product_name|
    textbox = page.find('html body.factfinder-index-index div.wrapper div.page div.cont div.main.col2-left-layout div.col-main div div.category-products ul.products-grid.first.odd li.item.first h2.product-name a')
    expect(textbox).to have_text(product_name)
    page.save_screenshot("./img/produktseite.png")
    puts product_name+"\n"
end