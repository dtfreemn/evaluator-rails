class UserSerializer < ActiveModel::Serializer
  attributes :id, :organization, :first_name, :last_name, :email, :scores
end
