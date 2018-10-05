Given("I am on the home page") do
  visit root_path
end

When("I click on the {string} link") do |string|
  click_on string
end

Then("I should be on the login page") do
  current_uri = '/users/sign_in'
end

Then("I should be on the sign up page") do
  current_uri = '/users/sign_up'
end

Given("I am on the login page") do
  visit '/users/sign_in'
end

When("I click on {string}") do |string|
  click_button(string)
end

Then("I should see the user is not registered message") do
  expect(page).to have_content("Invalid Email or password")
end



