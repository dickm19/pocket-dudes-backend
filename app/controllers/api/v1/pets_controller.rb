class Api::V1::PetsController < ApplicationController
      
    def index
        pets = Pet.all 
        render json: pets
    end

    def create
       pet = Pet.create(pet_params) 
       if pet.valid?
            render json: pet, status: :created
       else
            render json: { error: pet.errors.full_messages }, status: :not_acceptable 
       end
    end

    def destroy
        pet = Pet.find(params[:id])
        pet.destroy
        render json: pet
    end

    private

    def pet_params
        params.permit(:user_id, :name, :age, :happiness, :hunger, :pet_image_url)
    end

end