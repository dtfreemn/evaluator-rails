class Administrator < ApplicationRecord
  belongs_to :organization
  has_many :action_steps

  has_secure_password

  scope :include_all, -> {includes(:organization)}
end
