Feature: The user can see history and trends of the currency data

Scenario: Trend graph can be changed to display a time frame
Given I am on the trade page
When I select a different timeframe to be displayed on the trends graph
Then I should see that graph update to display the timeframe
#GE

Scenario: Choose a currency to display
Given On the trade page
When I select a different currency
Then I should see the graph for that currency
#GE
