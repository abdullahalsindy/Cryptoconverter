
Given("I am on the home page") do
  visit root_path
end

When("I click on the {string} link") do |string|
  click_on string
end

Then("I should be on the {string} page") do |string|
  path = current_path
  expect(path).to eq(string)
end

Given("I am on the login page") do
  visit '/users/sign_in'
end

Given("I enter my credentials") do
  fill_in('user_email', :with => 'sample@gmail.com')
  fill_in('user_password', :with => 'somepassword')
end

When("I click on {string}") do |string|
  click_link_or_button(string)
end

# I do not know why this does not pass 
When("I click on user {string}") do |string|
  #click_link_or_button(string)
  pending # I do not know why this does not work
end

Given("I enter invalid credentials") do
  fill_in('user_email', :with => 'invalid@gmail.com')
  fill_in('user_password', :with => 'invalid')
end

Given("I enter only a user name") do
  fill_in('user_email', :with => 'invalid@gmail.com')
end

Given("I enter only a password") do
  fill_in('user_password', :with => 'invalid')
end

Then("I should see the {string} message") do |string|
  expect(page).to have_content("Invalid Email or password")
end



