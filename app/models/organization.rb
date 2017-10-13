class Organization < ApplicationRecord
  has_many :users
  has_many :administrators
  has_many :eval_items, dependent: :destroy
end
