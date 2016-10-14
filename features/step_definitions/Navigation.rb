
When(/^I click on the '(.*)' button$/) do |button|
  $browser.link(:text => button)
end

Then(/^I am at the '(.*)' page$/) do |page|
  if $browser.url != $url + $hrefs[page]
    raise 'not on the correct page'
  end
end
