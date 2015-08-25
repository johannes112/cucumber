When(/^I send a post request to the orderform with data$/) do 
#  agent = Mechanize.new
#  page = agent.get('http://www.vega-direct.com/order/order/orderBySku/')
#  order_form = page.form('direct-shoping')
#  searchForm = page.form_with(:name => 'forma')
#  article_sku=agent.page.find('article_code[0]')
#  article_sku.set('94770')
#  article_mount=agent.page.find('#article_qty55a34291526bd0\2e 41761923')
#  article_mount.set('2')
  #order_form.field_with(name => 'article_code')
  #url = 'http://www.vega-direct.com/order/order/orderBySku/'
  #response = HTTParty.get('http://www.vega-direct.com/order/order/orderBySku/')
    #puts response.body, response.code, response.message, response.headers.inspect
  #agent.post(url, {"article_code[0]" => "94770", "article_qty[0]" => "2"})
    #puts "filled into form"
#  page = agent.submit(order_form) page = agent.post(url, {"name" => "value", "key" => "val"})
  #agent.post 'http://www.vega-direct.com/order/order/orderBySku/', :article_code[0] => '94770'
#  post('/order/order/orderBySku/', { :params => { :degrees => "30" } }) 
      
  #var = RestClient.get 'http://www.vega-direct.com/order/order/orderBySku/'
  RestClient.post 'http://www.vega-direct.com/order/order/orderBySku/', :article_code[0] => '94770', :nested => { :article_qty[0] => '2' }
end
#post 'http://www.vega-direct.com/order/order/orderBySku/' 'article_code[0]','94770'