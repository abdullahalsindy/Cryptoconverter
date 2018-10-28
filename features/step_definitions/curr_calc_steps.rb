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

Given("I am on the trade page [1]") do
    if (:user)
        visit root_path
    end
end
When("I click on the assets button [1]") do
    click_on "Assets"
end
Then("I should be given the choice to select a type of currency") do
    @input = params[:input]
end

Given("I am on the trade page [2]")
    if (:user)
        visit root_path
    end
end
When("I click on the assets button [2]")
    click_on "Assets"
end
Then("I should be given the choice to select the amount of my selected currency")
    @amount = :amount
end

Given("I am on the trade page")
    if (:user)
        visit root_path
    end
end
When("I submit my selected assets and amount")
    click_on "Submit"
end
Then("I should see those assets reflected in the database")
end
