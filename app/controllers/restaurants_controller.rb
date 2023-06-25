class RestaurantsController < ApplicationController
    def index
        restaurant = Restaurant.all
        render json: restaurant
    end

    def show
        restaurant = finder
        if restaurant 
            render json: restaurant
        else
            error_message
        end
    end

    def destroy
        restaurant = finder
        if restaurant 
            restaurant.destroy
            head :no_content
        else
            error_message
        end
    end

    private

    def finder
        Restaurant.find_by(id: params[:id])
    end

    def error_message
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end
