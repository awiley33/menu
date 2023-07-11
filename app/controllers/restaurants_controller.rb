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

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to "/restaurants/#{@restaurant.id}"
  end

  def restaurant_params
    params.permit(:name, :location, :rating, :reviews, :breakfast)
  end
end