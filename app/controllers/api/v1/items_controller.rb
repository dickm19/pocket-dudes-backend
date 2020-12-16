class Api::V1::ItemsController < ApplicationController

    def show
        item = Item.find(params[:id])
        render json: {item: ItemSerializer.new(item)}
    end

    def index
        items = Item.all
        render json: items, each_serializer: ItemSerializer
    end

    def create
        item = Item.create(item_params) 
        if item.valid?
             render json: {item: ItemSerializer.new(item)}, status: :created
        else
             render json: { error: item.errors.full_messages }, status: :not_acceptable 
        end
     end
 

    private

    def item_params
        params.permit(:name, :user_id, :image, :kind)
    end
end