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
else
    $stdout.write 'With\n'
    require 'capybara/cucumber'
    Capybara.default_driver = :selenium
end
