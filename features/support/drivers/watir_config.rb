module Watir_config
  if ENV['HEADLESS'] == 'watir'
    $stdout.write "watir\n"
    #require “rubygems”
    require 'watir' 
    require 'watir-webdriver'
    #require 'watir-webdriver/extensions/wait'
    browser = Watir::Browser.new :firefox
    INDEX_OFFSET = -1
    WEBDRIVER = true
      Before do
        @browser = browser
      end
      at_exit do
        browser.close
      end
  end
end