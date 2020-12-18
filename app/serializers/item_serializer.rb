class ItemSerializer < ActiveModel::Serializer

    attributes :id, :name, :image, :kind, :created_at, :updated_at
end
