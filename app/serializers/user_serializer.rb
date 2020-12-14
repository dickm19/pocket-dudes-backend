class UserSerializer < ActiveModel::Serializer
    has_many :pets
    # has_many :items
    attributes :id, :username, :name

end
