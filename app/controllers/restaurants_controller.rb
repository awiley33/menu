class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order("created_at desc")
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new

  end

  def create
    artist = Restaurant.create!(restaurant_params)
    redirect_to "/restaurants/#{artist.id}"
  end

  def restaurant_params
    params.permit(:name, :location, :rating, :reviews, :breakfast)
  end

end