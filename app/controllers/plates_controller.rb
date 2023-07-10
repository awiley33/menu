class PlatesController < ApplicationController
  def index
    @plates = Plate.all
  end

  def show
    @plate = Plate.find(params[:id])
  end
end