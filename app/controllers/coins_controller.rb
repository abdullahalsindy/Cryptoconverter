class CoinsController < ApplicationController
  
  
  def index
    @coin = Coin.ratings
  end
  
end
