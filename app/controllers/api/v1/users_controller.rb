class Api::V1::UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def index
        users = User.all
        render json: users
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: user
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: user
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end


    private

    def user_params
        params.require(:user).permit(:name, :username)
    end

end
