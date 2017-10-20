class EvaluationCategory < ApplicationRecord
  belongs_to :organization
  has_many :possible_points, dependent: :destroy
end
