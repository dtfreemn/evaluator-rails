class EvaluationCategory < ApplicationRecord
  belongs_to :organization
  has_many :possible_points, dependent: :destroy
  has_many :eval_items, dependent: :destroy
end
