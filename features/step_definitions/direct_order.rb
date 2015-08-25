
When(/^I use the form for direct ordering$/) do
  #var
  link_to_direct_ordering=page.find('body > div.wrapper > div > div.header-container > div.header > div.header-panel > div > div.quick-access > div > span')
  #actions
  link_to_direct_ordering.click()
  page.save_screenshot('./img/orderform.png')
  #var
  sku_for_direct_ordering=page.find('#direct-shoping > div > ul > li:nth-child(2) > div.input-box.input-box-large.ajax-order-input > input') 
  mount_for_direct_ordering=page.find('#direct-shoping > div > ul > li:nth-child(2) > div:nth-child(2) > input')
  order_button=find('#send2 > span > span')
  #actions
  sku_for_direct_ordering.set("94770")
  mount_for_direct_ordering.set("2")
  page.save_screenshot('./img/orderform_input.png')
  order_button.click()
    #ordertextbox=page.find('ajax-order-status-message ajax-order-status-success')
  #expect(page).to have_selector('#ajax-order-status', visible: true)
  #expect(ordertext).to eq("Das Produkt mit der Bestellnummer 94770 wurde erfolgreich dem Warenkorb hinzugefügt.")
end

Then(/^I should see a box which tells me, that I added my article$/) do
  #var
  screenshot_In='orderform_inputSku.png'
  link_to_direct_ordering=page.find('body > div.wrapper > div > div.header-container > div.header > div.header-panel > div > div.quick-access > div > span')
  link_to_direct_ordering.click()
  sleep 1
  page.save_screenshot('./img/'+screenshot_In)
    puts "Save screenshot "+screenshot_In
  expect(page).to have_selector('#ajax-order-status', visible: true)
    puts "Magento gets the order"
end

Then(/^I will see this article in my productcart$/) do
  #var
  url_productcart=('http://www.vega-direct.com/checkout/cart/')
  visit(url_productcart)
  expect(current_url).to eq('http://www.vega-direct.com/checkout/cart/')
    puts("Alright")
  
  cartelements=page.find('#shopping-cart-table > tbody > tr.first.odd > td:nth-child(2) > h2 > a')
  page.save_screenshot('./img/product_cart.png')
  expect(cartelements).to have_text("Loungetisch")
    puts("The productcart contains the order")
end