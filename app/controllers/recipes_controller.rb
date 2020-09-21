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
        #@recipe = params[recipe][name]
    end

    def edit

    end

    def update

    end

    def destroy

    end
end
