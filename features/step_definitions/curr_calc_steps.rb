Given("I am on the trade page") do
	if (:user)
		visit root_path
	end
end
When("i click the exchange button") do
    	click_on "Convert"
end
Then("i should be given the exchange rate between the coins") do
	:exchange == :calculator#calculator(:input, :output)
end
