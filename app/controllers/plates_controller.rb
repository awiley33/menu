class PlatesController < ApplicationController
  def index
    @plates = Plate.all
  end

  def show
    @plate = Plate.find(params[:id])
  end

  def assoc
    @restaurant = Restaurant.find(params[:id])
    @plates = Plate.find(params[:restaurant_id])
  end
end