class PetSerializer < ActiveModel::Serializer

    attributes :id, :name, :age, :happiness, :hunger, :pet_image_url

end
