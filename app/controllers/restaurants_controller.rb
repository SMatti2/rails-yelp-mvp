class RestaurantsController < ApplicationController
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  def destroy
    @restaurant = Restaurant.find(params['id'])
  end

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(params_r).save
    redirect_to
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params['id'])
  end

  def params_r
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
