Feature: Perorm all features needed for CryptoCurrency Exchange


Scenario: User exchanging between coins
Given I am on trade page
When i click the exchange button
Then i should be given the exchange rate between the coins
#aj

Scenario: Store user assets (type of asset)
Given I am on the trade page [1]
When I click on the assets button [1]
Then I should be given the choice to select a type of currency
#GE

Scenario: Store user assets (amount of asset)
Given I am on the trade page [2]
When I click on the assets button [2]
Then I should be given the choice to select the amount of my selected currency
#GE

Scenario: Store user assets (functionality)
Given I am on the trade page (3)
When I submit my selected assets and amount
Then I should see those assets reflected in the database
#GE
