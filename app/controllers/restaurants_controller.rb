class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order("created_at desc")
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def menu
    @restaurant = Restaurant.find(params[:id])
    # @plates = Plate.find(params[:restaurant_id])
  end
end