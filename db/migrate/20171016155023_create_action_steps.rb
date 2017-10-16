class CreateActionSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :action_steps do |t|
      t.integer :administrator_id
      t.integer :user_id
      t.string :description
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
