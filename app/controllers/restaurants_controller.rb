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
    artist = Restaurant.create!(name: params[:name], location: params[:location], rating: params[:rating], reviews: params[:reviews], breakfast: params[:breakfast])
    redirect_to "/restaurants/#{artist.id}"
  end

end