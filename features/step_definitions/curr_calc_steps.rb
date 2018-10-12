Given("I am on the trade page") do
	if (:user)
		visit root_path
	end
end

When("i click the exchange button") do
    click_on "Convert"
end

