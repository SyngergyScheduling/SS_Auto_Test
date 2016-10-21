require 'cucumber'
require 'watir-webdriver'
require 'yaml'
require 'headless'

$hrefs = YAML.load_file('rec/href.yaml')
$settings = YAML.load_file('rec/settings.yaml')
$url = $settings['url']
Selenium::WebDriver::Firefox::Binary.path = $settings['firefox_path']
#headless = Headless.new

begin
  Cucumber::Cli::Main.new(ARGV).execute!
rescue
  puts "Error"
ensure
  $browser.close #if $active_browser 
end

