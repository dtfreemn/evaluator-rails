class ActionStepSerializer < ActiveModel::Serializer
  attributes :id, :administrator, :user, :description, :completed
end
