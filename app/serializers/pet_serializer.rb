class PetSerializer < ActiveModel::Serializer
    belongs_to :pet_image_url
    attributes :id, :user_id, :name, :age, :happiness, :hunger

end
