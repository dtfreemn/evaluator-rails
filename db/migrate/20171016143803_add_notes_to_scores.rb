class AddNotesToScores < ActiveRecord::Migration[5.1]
  def change
    add_column :scores, :note, :string
  end
end
