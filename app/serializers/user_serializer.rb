class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :user_type
end
