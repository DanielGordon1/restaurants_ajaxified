class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params) # ->
    @review.restaurant = @restaurant
    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js # rails will render create.js.erb
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js # rails will render create.js.erb
      end
    end
    # -> render create.js.erb
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
