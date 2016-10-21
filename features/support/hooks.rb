Before('~@nobrowser') do
  $active_browser ||= false
  unless $active_browser
    $browser = Watir::Browser.new :firefox
    $browser.goto($url)
    $active_browser = true
  end
end
