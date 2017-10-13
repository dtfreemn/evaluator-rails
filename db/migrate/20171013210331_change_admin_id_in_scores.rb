class ChangeAdminIdInScores < ActiveRecord::Migration[5.1]
  def change
    rename_column :scores, :admin_id, :administrator_id
  end
end
