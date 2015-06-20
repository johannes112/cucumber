#to start headless cucumbertests: HEADLESS='true' cucumber
if ENV['HEADLESS'] == 'true'
  $stdout.write "Headless\n"
  require 'headless'
  require 'capybara/cucumber'
  Capybara.default_driver = :selenium
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
elsif ENV['HEADLESS'] == 'false'
  $stdout.write "With\n"
  require 'capybara/cucumber'
  Capybara.default_driver = :selenium
elsif ENV['HEADLESS'] == 'poltergeist'
  $stdout.write "poltergeist\n"
    # DEFAULT: headless tests with poltergeist/PhantomJS
  require 'rspec/expectations'
  require 'capybara/cucumber'
  require 'capybara/poltergeist'
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
         #page.driver.resize(400,600)
     #page.save_screenshot("/Users/user/Desktop/test.pdf")
     #puts page.within_window
     #puts page.driver.network_traffic
     #puts page.driver.cookies
     #puts page.response_headers.to_a
      window_size: [1280, 1024]#,
      #debug:       true
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
else
  $stdout.write "Nix\n"
  exit
end
