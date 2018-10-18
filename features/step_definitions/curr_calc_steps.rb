Given("I am on trade page") do
	if (:user)
		visit root_path
	end
end
When("i click the exchange button") do
    	click_on "Convert"
end
Then("i should be given the exchange rate between the coins") do
	@exchange_rate = :exchange
    @exchange_rate_calculator = CryptoCompare.new
    @exchange_rate == @exchange_rate_calculator.request(:input, :output)
end
