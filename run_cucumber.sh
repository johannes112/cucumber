export SAUCE_USERNAME=${2}
export SAUCE_ACCESS_KEY=${3}
export ON=${1}

HEADLESS=$ON cucumber -t ${4}
#sh run_cucumber.sh saucelabs sauce_username sauce_api @search