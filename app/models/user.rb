class User < ApplicationRecord
  has_many :scores
  has_many :eval_items, through: :scores
end
