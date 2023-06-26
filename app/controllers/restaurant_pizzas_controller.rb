class RestaurantPizzasController < ApplicationController
    
    def create
        rp = RestaurantPizza.create(pizza_params)

        if rp.save
            render json: rp, status: :created
        else
            render json: {message: "errors": ["validation errors"]}
        end
    end

    private
    def pizza_params
        params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end
end
