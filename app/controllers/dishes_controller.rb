class DishesController < ApplicationController
  def index
    @dishes = Dish.order(:name)
  end

  def show
    @dish = Dish.find_by(id: params[:id])
    if @dish.nil?
      head :not_found
      return
    end
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params) 
    if @dish.save 
      redirect_to dish_path(@dish)
      return
    else 
      render :new 
      return
    end
  end

  private

  def dish_params
    return params.require(:dish).permit(:name, :servings, :meal, :recipe)
  end
end
