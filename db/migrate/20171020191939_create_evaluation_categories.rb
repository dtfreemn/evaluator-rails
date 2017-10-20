class CreateEvaluationCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluation_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
