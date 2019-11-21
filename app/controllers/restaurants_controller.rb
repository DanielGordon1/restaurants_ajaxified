class RestaurantsController < ApplicationController
  # YAGNI
  # You arent gonna need it
  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
  end
end
