class UsersController < ApplicationController

  def show
    @user = current_user
    @bookings = @user.bookings
    @booking = Booking.find(params[:id])
    @items = @user.items
  end
end
