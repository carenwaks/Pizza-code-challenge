class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        restaurant = Restaurant.all
        render json: restaurant, only: [:name, :address]
    end

    def show
        restaurant = find_restaurant
        render json: restaurant, only: [:name, :address]
    end

    def destroy
        restaurant = find_restaurant 
        restaurant.destroy
        head :no_content
    end

    private

    def find_restaurant
        Restaurant.find(id: params[:id])
    end

    def render_not_found_response
        render json: {errors: "Restaurant not found"}, status: :not_found
    end
end
