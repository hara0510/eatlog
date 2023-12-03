class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.references :following
      t.references :follower
      t.timestamps
    end
  end
end
