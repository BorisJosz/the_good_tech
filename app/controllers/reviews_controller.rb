class ReviewsController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @user = current_user
    @reviews = Review.all
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @item = @booking.item
    @user = current_user
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.user = current_user
    if @review.save
      redirect_to user_booking_path(current_user)
    else
      flash[:error] = "Errrrrr"
      redirect_to user_booking_path(current_user)
    end

  end

  private

  def review_params
    params.require(:review).permit(:stars, :description)
  end
end
