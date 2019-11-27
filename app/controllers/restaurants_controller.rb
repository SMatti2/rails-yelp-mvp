class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def destroy
  end

  def create
    Restaurant.create(params_res)
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def params_res
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
