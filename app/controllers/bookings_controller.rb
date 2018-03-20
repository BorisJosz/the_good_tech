class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    # @item = Item.find(params[:item_id])
    # @item.user = current_user

  end

  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.item = Item.find(params[:item_id])
    if @booking.save
      redirect_to user_booking_path(current_user, @booking)

    else
      render :new
    end
  end

  def delete
  end

end
