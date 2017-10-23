class AddEvaluationCategoryIdToEvalItems < ActiveRecord::Migration[5.1]
  def change
    add_column :eval_items, :evaluation_category_id, :integer
  end
end
