class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    #binding.pry
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end

  def show
    #binding.pry
    @ingredient = Ingredient.find(params[:id])
  end
  def edit
    @ingredient = Ingredient.find(params[:id])
  end
  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update!(ingredient_params)
    redirect_to ingredient
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
