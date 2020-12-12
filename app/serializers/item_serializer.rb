class ItemSerializer < ActiveModel::Serializer
    attributes :name, :pet_image, :cost, :points
end
