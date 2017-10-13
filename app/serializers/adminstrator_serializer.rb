class AdminstratorSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :organization
end
