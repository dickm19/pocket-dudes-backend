class User < ApplicationRecord
    has_many: :pets
    has_many: :toys
    has_many: :food
end
