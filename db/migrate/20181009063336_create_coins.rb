class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :symbol
      t.string :full_name
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
