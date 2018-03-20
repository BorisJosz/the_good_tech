class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]

  def index
    unless params[:query].nil?
       @items = Item.where(category: params[:query])
    else
       @items = Item.all
    end


    @categories = @items.categories
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
    params.require(:item).permit(:category, :price_per_day, :description, :address)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
