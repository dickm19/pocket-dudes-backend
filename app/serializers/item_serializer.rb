class ItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :kind, :bought
end
