class ItemSerializer < ActiveModel::Serializer
    has_many :users
    attributes :id, :name, :image, :kind
end
