Given("I am on trade page") do
	if (:user)
		visit root_path
	end
end
When("i click the exchange button") do
    	click_on "Convert"
end
Then("i should be given history about the currency prices from one to the other") do
	@dates = :dates
	@prices = :prices	
    @exchange_rate_calculator = CryptoCompare.new
    @graphData = @calculator.history_to_day(@input, @output, 30)
    @dates = @graphData.map {|x| Time.at(x.values[0]).to_date.day}
    @prices = @graphData.map {|x| x.values[1]}
end
