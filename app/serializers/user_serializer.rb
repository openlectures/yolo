class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :auth_token
end
