class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :eval_item, :score, :admin, :user
end
