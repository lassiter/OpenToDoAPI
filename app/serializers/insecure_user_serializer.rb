class InsecureUserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password

end
