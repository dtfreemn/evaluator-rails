class EvalItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :users, :evaluation_category
end
