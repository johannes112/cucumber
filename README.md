#for execution with help of headless browser "poltergeist" on ubuntu:
sudo apt-get install poltergeist
#for installing gems use: 
bundle install 
#on linux: to execute tests:
#headless:
cucumber HEADLESS=true
#with selenium on firefox:
cucumber HEADLESS=false
#with phantomjs
cucumber HEADLESS=poltergeist

