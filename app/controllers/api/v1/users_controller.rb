class Api::V1::UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        pets = user.pets
        pets = pets.map { |pet| PetSerializer.new(pet)}
        render json: {user: UserSerializer.new(user), pets: pets}
    end

    def index
        users = User.all
        render json: users, each_serializer: UserSerializer
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
            render json: {user: UserSerializer.new(user)}
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end


    private

    def user_params
        params.require(:user).permit!
    end

end
