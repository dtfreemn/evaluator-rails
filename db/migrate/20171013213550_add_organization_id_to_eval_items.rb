class AddOrganizationIdToEvalItems < ActiveRecord::Migration[5.1]
  def change
    add_column :eval_items, :organization_id, :integer
  end
end
