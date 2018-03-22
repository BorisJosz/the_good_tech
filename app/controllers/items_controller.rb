class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]

  def index
    unless params[:filter].nil?
      @items = Item.where(category: params[:filter].downcase)
      p @items
    else
      @items = Item.all
    end
      @categories = Item.categories
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.owner = current_user
    if @item.save!
      redirect_to item_path(@item)
    else
      render :new
  end
  end

  def show
    @bookings = @item.bookings
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:category, :price_per_day, :description, :address, :photo)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
