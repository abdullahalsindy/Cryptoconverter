#
#class coinWallet < ActiveRecord::Base
#require 'coinbase/wallet'
  #  initialize()
    #    @key = "JbZDTReI8wTZdR6h"
     #   @secret = "Z2ap4nezzRVIhKdOCFxjhQ9AVZwIkpMA"
     #   @client = Coinbase::Wallet::Client.new(api_key:@key,api_secret:@secret) 
   # end 
    

  #  def getSpotPrice(coin,currency)
    
   #     convString = coin << "-" << currency
    
   #     spotPrice = client.spot_price({currency_pair: convString})
    #    return spotPrice
    #end
    
    #def getSalePrice(coin,currency)
    
     #  convString = coin << "-" << currency
    
      #  salePrice = client.sell_price({currency_pair: convString})
       # return salePrice
    #end 
    
   # def getExchangePrice(coin)
    #    exchangeRates = client.exchange_rates({currency: coin})
     #   return exchangeRates
    #end
#end