class Coin < ActiveRecord::Base
  def self.ratings
    Coin.select(:symbol).distinct.pluck(:symbol).sort
  end
end