# to start cucumber-tests on ubuntu14.04 install a few things:
sudo apt-get install ruby-dev
sudo apt-get install cucumber
sudo apt-get install make
sudo apt-get install qt5-default libqt5webkit5-dev
#install gems 
sudo gem install capybara-webkit
sudo gem install selenium-webdriver
#execute cucumber on ubuntu
cucumber capybara-demo
