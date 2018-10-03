Feature: Perorm all features needed for CryptoCurrency Exchange


Scenario: User exchanging between coins
Given I am on  trade page
When i click the exchange button
Then i should be given the exchange rate between the coins
#aj

Scenario: User buying a coin with a specified currency
Given I am on the Purchase page
When i click the Purchase button 
Then I should be given the price to purchase that coin
#aj

Scenario: User selling a coin with a specified currency
Given I am on the Sell page
When i click the Sell button
Then I should be given the sell price of the coin
#aj