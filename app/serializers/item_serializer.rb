class ItemSerializer < ActiveModel::Serializer
    attributes :name, :image, :kind, :user_id
end
