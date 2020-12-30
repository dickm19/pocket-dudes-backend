class UserSerializer < ActiveModel::Serializer
    has_many :pets
    has_many :user_items
    attributes :id, :username, :name, :points, :high_score

end
