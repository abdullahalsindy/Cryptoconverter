class Coin < ActiveRecord::Base
  def self.ratings
    Coin.all.order(:name)
  end
end