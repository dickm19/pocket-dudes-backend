class Api::V1::ItemsController < ApplicationController

    def show
        item = Item.find(params[:id])
        render json: {item: ItemSerializer.new(item)}
    end

    def index
        items = Item.all
        render json: items, each_serializer: ItemSerializer
    end