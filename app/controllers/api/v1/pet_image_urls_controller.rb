class Api::V1::PetImageUrlsController < ApplicationController
      
    def index
        images = PetImageUrl.all 
        render json: images, each_serializer: PetImageUrlSerializer
    end
    def show
        image = PetImageUrl.find(params[:id])
        render json: image: PetImageSerializer.new(image)
    end

end