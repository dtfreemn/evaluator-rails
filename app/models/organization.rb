class Organization < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :administrators, dependent: :destroy
  has_many :eval_items, dependent: :destroy
  has_many :evaluation_categories, dependent: :destroy
end
