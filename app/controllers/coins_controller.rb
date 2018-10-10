require_dependency 'crypto_compare.rb' 

class CoinsController < ApplicationController

  
  def index
    @coin = Coin.ratings
    @calculator = CryptoCompare.new
    @input = params[:input]
    @output = 'USD'#params[:output]
    @exchange = @calculator.request @input, @output
  end
  
end
