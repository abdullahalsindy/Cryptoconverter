Given("I am on the trade page") do
	if (:user)
		visit root_path
	end
end
When("I select a different timeframe to be displayed on the trends graph") do
	CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| Time.at(x.values[0]).to_date.day.changed?}
end
Then("I should see that graph update to display the timeframe") do
	CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| Time.at(x.values[0])} == :graphData
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
