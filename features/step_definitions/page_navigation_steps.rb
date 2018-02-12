When /^I visit the home page$/ do
  visit "/"
end

When /^I visit the impersonate page$/ do
  # TODO should take a secret token of some sort?
  visit "/impersonate"
end

Then /^I am welcomed with open arms$/ do
  assert page.has_content?('Welcome')
end

When /^I search for a user "(.*?)"$/ do |name|
  fill_in "search", with: name
  click_button "Search"
end

When /^I click link "(.*?)"$/ do |button|
  click_link button
end

When /^I click button "(.*?)"$/ do |button|
  click_button button
end

Then /^I see "(.*?)"$/ do |text|
  assert page.has_content?(text)
end

Then /^I do not see "(.*?)"$/ do |text|
  assert ! page.has_content?(text)
end

