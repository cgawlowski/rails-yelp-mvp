class RestaurantController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end