Given("I am on the trade page") do
	if (:user)
		visit root_path
	end
end
When("I click on the trends button") do
	click_on
end
Then("I should be taken to the trends page") do
	expect(current_path).to eq(trends_path)
end

Given("I am on the trends page") do
	visit trends_path
end
When("I select a different timeframe to be displayed on the trends graph") do
	:timeframe.changed # model variable
end
Then("I should see that graph update to display the timeframe") do
	:graph.time == :timeframe # model variable
end

Given("I am on the trends page") do
	visit trends_path
end
When("I select a different currency") do
	:currency.changed # model variable
end
Then("I should see the graph for that currency") do
	:graph.curr == :currency # model variable
end
