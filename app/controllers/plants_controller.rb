class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(plants_permit)
        render json: plant, status: :created
    end

    def plants_permit
        params.permit(:name, :image, :price)
    end
end
