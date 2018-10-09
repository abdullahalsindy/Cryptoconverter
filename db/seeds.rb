# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create :email => "sample@gmail.com", :password => "somepassword"

coins = [{:symbol => 'BTC', :full_name => 'Bit Coin'}]

  coins.each do |coin|
    Coin.create!(coin)
  end