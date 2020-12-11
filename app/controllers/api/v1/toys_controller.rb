class Api::V1::ToysController < ApplicationController

    def show
        user = Toy.find(params[:id])
        render json: toy
    end

    def index
        toys = Toy.all
        render json: toys
    end