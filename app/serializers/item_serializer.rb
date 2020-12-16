class ItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :kind, :user_id
end
