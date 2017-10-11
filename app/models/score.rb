class Score < ApplicationRecord
  belongs_to :user
  belongs_to :eval_item
  belongs_to :admin, :class_name => 'User', :foreign_key => :admin_id
end
