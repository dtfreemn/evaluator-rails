class Administrator < ApplicationRecord
  belongs_to :organization

  has_secure_password

  scope :include_all, -> {includes(:organization)}
end
