class Api::V1::PetsController < ApplicationController
      
    def index
        pets = Pet.all 
        render json: pets, each_serialize: PetSerializer
    end

    def show
        pet = Pet.find(params[:id])
        render json: {pet: PetSerializer.new(pet)}
    end

    def create
       pet = Pet.create(pet_params) 
       if pet.valid?
            render json: {pet: PetSerializer.new(pet)}, status: :created
       else
            render json: { error: pet.errors.full_messages }, status: :not_acceptable 
       end
    end

    def update
        pet = Pet.find_by(id: params[:id])
        # byebug
        pet.update(pet_params)
        pet.save
        render json: pet
    end

    def destroy
        pet = Pet.find(params[:id])
        pet.destroy
        render json: pet
    end

    private

    def pet_params
        params.require(:pet).permit!
    end

end