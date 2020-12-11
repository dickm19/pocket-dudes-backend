class FoodSerializer < ActiveModel::Serializer
    attributes :name, :image_url, :cost, :points
end
