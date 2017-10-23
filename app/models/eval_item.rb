class EvalItem < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :users, through: :scores
  belongs_to :organization
  belongs_to :evaluation_category
end
