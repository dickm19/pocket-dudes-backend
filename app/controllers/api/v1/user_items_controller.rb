class Api::V1::UserItemsController < ApplicationController

    def show
        user_item = UserItem.find(params[:id])
        pets = user_item.pets
        pets = pets.map { |pet| PetSerializer.new(pet)}
        render json: {user_item: UserItemSerializer.new(user_item), pets: pets}
    end

    def index
        user_items = UserItem.all
        render json: user_items, each_serializer: UserItemSerializer
    end

    def update
        user_item = UserItem.find(params[:id])
        user_item.update(user_item_params)
        if user_item.save
            render json: user_item
        else
            render json: { errors: user_item.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def create
        user_item = UserItem.create(user_item_params)
        if user_item.valid?
            render json: {user_item: UserItemSerializer.new(user_item)}
        else
            render json: { error: user_item.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        user_item = UserItem.find(params[:id])
        user_item.destroy
        render json: user_item
    end

    private

    def user_item_params
        params.require(:user_item).permit!
    end

end
