Given(/^I am on the index page$/) do
  visit root_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, content|
  fill_in element, with: content
end

And(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

And(/^there should be "([^"]*)" contact in the database$/) do |count|
  expect(Contact.all.count).to eq count.to_i
end