class CreatePossiblePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :possible_points do |t|
      t.integer :score
      t.string :description
      t.integer :evaluation_category_id

      t.timestamps
    end
  end
end
