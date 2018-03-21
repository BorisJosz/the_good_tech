class ReviewsController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @user = User.find(params[:user_id])
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @user = User.find(params[:user_id])
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.user = User.find(params[:user_id])
    @review.save
    redirect_to user_booking_path(@review.user, @review.booking)
  end

  private

  def review_params
    params.require(:review).permit(:stars, :description)
  end
end
