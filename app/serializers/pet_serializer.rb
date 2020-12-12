class PetSerializer < ActiveModel::Serializer
    attributes :id, :name, :user, :age, :happiness, :hunger, :pet_image_url

end
