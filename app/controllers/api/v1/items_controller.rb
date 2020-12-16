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
        item = Item.new(item_params)
        item.save
        render json: {item: ItemSerializer.new(item)}, status: :created
       
     end
 

     def update
        item = Item.find_by(id: params[:id])
        item.update(item_params)
        item.save
        render json: item
    end

    private

    def item_params
        params.require(:item).permit!
    end
end