class ToySerializer < ActiveModel::Serializer
    attributes :name, :image_url, :cost, :points

end
