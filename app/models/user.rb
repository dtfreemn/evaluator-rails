class User < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :eval_items, through: :scores

  scope :include_all, -> {includes(:scores => :eval_item)}
end
