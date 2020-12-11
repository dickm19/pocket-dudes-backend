class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :name
    has_many: :pets
    has_many: :toys
    has_many: :food

end
