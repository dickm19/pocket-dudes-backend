class PetSerializer < ActiveModel::Serializer
    attributes :id, :name, :user, :age, :happiness, :hunger, :image_url

end
