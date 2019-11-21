class RestaurantsController < ApplicationController
  before_action :set_restaurant, except: [:index]
  # YAGNI
  # You arent gonna need it

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
    # -> At the end of a controller action
    # Rails will render a template
    # located in a folder with the same name as the controller
    # and named the same as the controller action
    # -> show.html.erb
  end

  def destroy
    @restaurant.destroy
    # -> destroy.js.erb
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
