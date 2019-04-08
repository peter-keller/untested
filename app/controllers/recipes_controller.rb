class RecipesController < ApplicationController


    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])

    end

    def create
        @recipe = Recipe.new(recipe_params)
        @recipe.save

        redirect_to recipe_path(@recipe)
    end

    def edit
        @recipe = Recipe.find(params[:id])

    end

    def new
        @recipe = Recipe.new
    end

    def update
        @recipe = Recipe.find(params[:id])
        @recipe.update(recipe_params)
        @recipe.save

        redirect_to recipe_path(@recipe)
    end

    def delete

    end

    private

    def recipe_params
        params.require(:recipe).permit(:name)
    end

end
