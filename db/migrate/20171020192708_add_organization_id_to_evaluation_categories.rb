class AddOrganizationIdToEvaluationCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluation_categories, :organization_id, :integer
  end
end
