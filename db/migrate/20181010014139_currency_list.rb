class CurrencyList < ActiveRecord::Migration
  def change
      create_table :currencies do |t|
      t.string :currency
      t.string :name
      t.string :symbol
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
  end
end
