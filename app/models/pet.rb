class Pet < ApplicationRecord
    belongs_to :user
    belongs_to :pet_image_url
end
