### GIVEN ###

Given /^I am not register$/ do
    page.driver.submit :delete, "/users/sign_out", {}
end

Given /^I go to register$/ do
    visit '/users/sign_up'
end

### WHEN ###

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button arg1
end

When(/^I register via mobile$/) do
  visit '/users/sign_up_mobile'
end

### THEN ###

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

