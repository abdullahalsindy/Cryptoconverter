require_dependency 'crypto_compare.rb' 

class CoinsController < ApplicationController
before_filter :authenticate_user!
  
  def index
    @coin = Coin.ratings
    @calculator = CryptoCompare.new
    @input = params[:input] || 'BTC'
    @output = params[:output] || 'USD'
    if params[:qty].to_i <= 0 then @q = 1 else @q = params[:qty].to_i end
    @exchange = @calculator.request(@input, @output)
    @exchange = @exchange.nil? ? "No data available please report to the site owners": "#{@q} (#{@input})" +" = " + "#{ (@q * @exchange)} (#{@output})"

  end
  
end
