class Api::V1::ItemsController < ApplicationController

    def show
        item = Item.find(params[:id])
        render json: item
    end

    def index
        items = Item.all
        render json: items
    end