class User < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :eval_items, through: :scores
  has_many :action_steps
  belongs_to :organization

  scope :include_all, -> {includes(:scores => [{:eval_item => :evaluation_category}, :administrator]).includes(:action_steps => [:administrator])}

  def first_name=(name)
    super name.titleize
  end

  def last_name=(name)
    super name.titleize
  end
end
