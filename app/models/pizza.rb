class Pizza < ApplicationRecord
    has_many :restaurants, through: :RestaurantPizza
end
