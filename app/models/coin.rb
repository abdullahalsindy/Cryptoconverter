class Coin < ActiveRecord::Base
  def self.get_coins
    Coin.all.order(:name)
  end
end