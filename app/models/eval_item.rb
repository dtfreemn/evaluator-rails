class EvalItem < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :users, through: :scores
  belongs_to :organization
end
