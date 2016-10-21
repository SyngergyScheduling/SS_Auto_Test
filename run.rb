require 'cucumber'
require 'watir-webdriver'
require 'yaml'
require 'headless'

def usage
  puts "Invalid argument"
  puts "specify browser with -f"
  puts "specify headless with -h"
  puts "all cucumber arguments are valid"
end

$hrefs = YAML.load_file('rec/href.yaml')
$settings = YAML.load_file('rec/settings.yaml')
$url = $settings['url']
Selenium::WebDriver::Firefox::Binary.path = $settings['firefox_path']
if $settings['headless']
  headless = Headless.new
  headless.start
end

begin
  Cucumber::Cli::Main.new(ARGV).execute!
rescue Exception => e
  puts e
ensure
  $browser.close if $active_browser 
end

