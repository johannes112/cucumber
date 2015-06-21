#for execution with help of headless browser "poltergeist" on ubuntu:
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
tar xvjf phantomjs-1.9.8-linux-x86_64.tar.bz2
sudo mv phantomjs-1.9.8-linux-x86_64 /usr/local/share
sudo ln -sf /usr/local/share/phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin

#for installing gems use: 
bundle install 
#on linux: to execute tests:
#headless:
cucumber HEADLESS=true
#with selenium on firefox:
cucumber HEADLESS=false
#with phantomjs
cucumber HEADLESS=poltergeist

