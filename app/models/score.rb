class Score < ApplicationRecord
  belongs_to :user
  belongs_to :eval_item
  belongs_to :administrator
end
