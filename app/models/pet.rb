class Pet < ApplicationRecord
    belongs_to :user
    has_one :pet_image_url
end
