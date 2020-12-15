class UserSerializer < ActiveModel::Serializer
    has_many :pets
    attributes :id, :username, :name

end
