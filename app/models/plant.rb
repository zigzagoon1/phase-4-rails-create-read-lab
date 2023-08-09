class Plant < ApplicationRecord

    def index
        plants = Plant.all
        render json: plants
    end
end
