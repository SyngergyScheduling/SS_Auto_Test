require 'selenium-webdriver'
require 'watir-webdriver'
require 'yaml'

$hrefs = YAML.load_file('features/support/href.yaml')
$settings = YAML.load_file('features/support/settings.yaml')
$url = $settings['url']

# Because of a bug in firefox an older version of firefox has to be used
# The following line specifies the path to the version of firefox that works
Selenium::WebDriver::Firefox::Binary.path = $settings['firefox_path']
#$browser = Watir::Browser.new :firefox

#$browser.goto($hrefs['home'])
