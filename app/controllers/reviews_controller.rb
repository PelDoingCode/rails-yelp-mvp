class ReviewsController < ApplicationController
  def index
    # @restaurants = Restaurant.find(params[:id])

    # @reviews = Restaurant.select("@restaurants.review")
    @reviews = Review.find(params[:id])
    @review = Review.where(@reviews)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      # redirect_to new_restaurant_path
      render "new"
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
