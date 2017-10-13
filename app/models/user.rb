class User < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :eval_items, through: :scores
  belongs_to :organization

  scope :include_all, -> {includes(:scores => [:eval_item, :administrator])}
end
