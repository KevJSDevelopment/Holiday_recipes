class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        name = params["recipe"]["name"]
        holiday = params["recipe"]["holiday_id"]
        recipe = Recipe.create(name: name, holiday_id: holiday)
        redirect_to recipe_path(recipe.id)
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        name = params["recipe"]["name"]
        holiday = params["recipe"]["holiday_id"]
        recipe = Recipe.find(params[:id])
        recipe.update(name: name, holiday_id: holiday)
        redirect_to recipe_path(recipe.id)
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        redirect_to recipes_path
    end

end
