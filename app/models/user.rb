class User < ApplicationRecord
    has_many :pets
    has_many :user_items
    has_many :items, through: :user_item
end
