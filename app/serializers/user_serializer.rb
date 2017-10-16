class UserSerializer < ActiveModel::Serializer
  attributes :id, :organization, :first_name, :last_name, :email, :scores, :action_steps
end
