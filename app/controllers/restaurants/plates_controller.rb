class Restaurants::PlatesController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:id])
  end
  
  def create
    @restaurant = Restaurant.find(params[:id])
    plate = @restaurant.plates.create!(plate_params)
    redirect_to "/restaurants/#{@restaurant.id}/plates"
  end

  def new
    @restaurant = Restaurant.find(params[:id])
  end

  private
  def plate_params
    params.permit(:name, :price, :serves, :vegetarian, :category)
  end
end