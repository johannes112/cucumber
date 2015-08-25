module Poltergeist_custom
  if ENV['HEADLESS'] == 'poltergeist'
    require 'rspec/expectations'
    require 'capybara/cucumber'
    require 'capybara/poltergeist'
    
      Capybara.register_driver :poltergeist do |app|
      options = {
          :js_errors => false,
          :timeout => 120,
          :debug => false,
          :phantomjs_options => ['--load-images=no', '--disk-cache=false', '--ignore-ssl-errors=yes'],
          :inspector => true,
      }
      Capybara::Poltergeist::Driver.new(app, options)
    end
    Capybara.default_driver    = :poltergeist
    Capybara.javascript_driver = :poltergeist
    #Capybara.default_max_wait_time = 5
  end
end