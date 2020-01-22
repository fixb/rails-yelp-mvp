class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def show
    @review = Review.find(params[:restaurant_id])
  end
end
