class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params["id"])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    name = params["ingredient"]["name"]
    ingredient = Ingredient.create(name: name)
    redirect_to ingredient_path(ingredient.id)
  end

  def edit
    @ingredient = Ingredient.find(params["id"])
  end

  def update
    name = params["ingredient"]["name"]
    ingredient = Ingredient.find(params[:id])
    ingredient.update(name: name)
    redirect_to ingredient_path(ingredient.id)
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
  end

end
