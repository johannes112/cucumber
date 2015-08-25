def fillOutForm()
  mechanize = Mechanize.new
  page = mechanize.get('https://www.gov.uk/')
  form = page.forms.first
  form['q'] = 'passport'
  page = form.submit
  page.search('#top-results h3').each do |h3|
    puts h3.text.strip
  end
end

Capybara.register_driver :iphone do |app|
  require 'selenium/webdriver'
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['general.useragent.override'] = "iPhone"

  Capybara::Driver::Selenium.new(app, :profile => profile)
end

World(Rack::Test::Methods)