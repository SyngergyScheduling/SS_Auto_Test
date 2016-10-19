
Given(/^I navigate to the '(.*)' page$/) do |page|
  $browser.goto($url + $hrefs[page.downcase])
end

When(/^I click on the '(.*)' button$/) do |button|
  $browser.element(:text => button).click
end

Then(/^I am at the '(.*)' page$/) do |page|
  if $browser.url != $url + $hrefs[page.downcase]
    raise 'not on the correct page'
  end
end
