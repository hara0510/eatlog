class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :memo
      t.string :meal_time 
      t.timestamps
    end
  end
end
