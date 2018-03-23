class UsersController < ApplicationController

  def show
    @user = current_user
    @bookings = @user.bookings
    @items = @user.items
  end

private

end
