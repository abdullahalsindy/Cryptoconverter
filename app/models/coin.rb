class Coin < ActiveRecord::Base
  def self.ratings
    Coin.all
  end
end