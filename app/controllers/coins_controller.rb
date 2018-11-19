require_dependency 'crypto_compare.rb'
require 'date' 

# The CoinsController class is responsible for supplying the app data to the coins view
class CoinsController < ApplicationController
    include ActiveModel::Dirty
before_filter :authenticate_user!

  def index
    @coin = Coin.get_coins
    @calculator = CryptoCompare.new
    get_params
    get_exchange
    set_graph_data
  end
  
  def get_params
    @input = params[:input] || 'BTC'
    @output = params[:output] || 'USD'
    @qty = params[:qty].to_f
    if @qty <= 0 then @qty = 1 else @qty end
  end
    
  def get_exchange
    @exchange = @calculator.request(@input, @output) || -1
    @exchange = @exchange == -1 ? "No data available please report to the site owners": "#{@qty} (#{@input})" +" = " + "#{ (@qty * @exchange).round(6)} (#{@output})"
  end
    
  def set_graph_data
    @graph_data = @calculator.history_to_day(@input, @output, 30)
    @data = @graph_data.map do
      |current| 
      element = current.values
      [element[0]*1000.0,element[1]]
      end
  end
  
end