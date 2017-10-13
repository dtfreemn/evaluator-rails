class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :eval_item, :score, :administrator, :user
end
