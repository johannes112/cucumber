
#to start headless cucumbertests: HEADLESS='true' cucumber
if ENV['HEADLESS'] == 'true'
  $stdout.write "Headless\n"
  require_relative './drivers/headless_config.rb'
elsif ENV['HEADLESS'] == 'watir'
  $stdout.write "watir\n"
  require_relative './drivers/watir_config.rb'
elsif ENV['HEADLESS'] == 'false'
  $stdout.write "With\n"
  require 'capybara/cucumber'
elsif ENV['HEADLESS'] == 'poltergeist'
  $stdout.write "poltergeist\n"
  # DEFAULT: headless tests with poltergeist/PhantomJS
  require_relative './drivers/poltergeist_config.rb'
elsif ENV['HEADLESS'] == 'saucelabs'
  $stdout.write "saucelabs\n"
  #require_relative './drivers/saucelabs_config.rb'
  puts "To use saucelabs please execute the shellscript 'run_cucumber.sh'\n\n\n"
else
  $stdout.write "Die Variable 'HEADLESS' mit richtigem Parameter existiert nicht.\nMoegliche Parameter:\n\t-HEADLESS=true\n\t-HEADLESS=false\n\t-HEADLESS=poltergeist\n\nBeispiel für richtigen Aufruf:\n\t-HEADLESS=true cucumber\n\nTo run with tags: \nHEADLESS=true cucumber -t @search"
  exit
end
