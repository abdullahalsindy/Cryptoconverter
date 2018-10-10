require_dependency 'crypto_compare.rb' 

class CoinsController < ApplicationController

  
  def index
    @coin = Coin.ratings
    @calculator = CryptoCompare.new
    @input = params[:input] || 'BTC'
    @output = params[:output] || 'USD'
    @exchange = @calculator.request(@input, @output)
    @exchange = @exchange.nil? ? "No data available please report to the site owners": "1 (#{@input})" +"=" + "#{@exchange} (#{@output})"

  end
  
end
