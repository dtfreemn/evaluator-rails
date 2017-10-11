class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :eval_item_id
      t.integer :admin_id
      t.string :score

      t.timestamps
    end
  end
end
