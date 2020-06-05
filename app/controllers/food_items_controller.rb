class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.all
    @food_item = FoodItem.new
  end

  #TODO: not needed?
  def show
    food_item_id = params[:id]
    @food_item = food_item.find_by(id: food_item_id)
    if @food_item.nil?
      head :not_found
      return
    end
  end

  def create
    @food_item = FoodItem.new(food_item_params) 
    if @food_item.save 
      redirect_to food_items_path
      return
    else 
      render :index 
      return
    end
  end

  private

  def food_item_params
    return params.require(:food_item).permit(:name, :category, :units)
  end
end
