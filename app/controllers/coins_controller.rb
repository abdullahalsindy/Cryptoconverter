require_dependency 'crypto_compare.rb'
require 'date' 

# The CoinsController class is responsible for supplying the app data to the coins view
class CoinsController < ApplicationController
    include ActiveModel::Dirty
before_filter :authenticate_user!
  
  def index
    @coin = Coin.get_coins
    @calculator = CryptoCompare.new
    @input = params[:input] || 'BTC'
    @output = params[:output] || 'USD'
    if params[:qty].to_i <= 0 then @q = 1 else @q = params[:qty].to_i end
    @exchange = @calculator.request(@input, @output)
    @graphData = @calculator.history_to_day(@input, @output, 30)
    #@graphDataUSD = @calculator.history_to_day(@input, 'USD', 30)
    
    #@dataUSD = @graphDataUSD.map {|x| [x.values[0]*1000.0,x.values[1]]}
    @data = @graphData.map {|x| [x.values[0]*1000.0,x.values[1]]}
    #@dates = @graphData.map {|x| Time.at(x.values[0]).to_date.strftime('%v')}
    #@prices = @graphData.map {|x| x.values[1]}
     
    @exchange = @exchange.nil? ? "No data available please report to the site owners": "#{@q} (#{@input})" +" = " + "#{ (@q * @exchange)} (#{@output})"

  end
  
end
