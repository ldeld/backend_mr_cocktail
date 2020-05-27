class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.with_attached_photo.all

    render :index
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @cocktail_ingredients = @cocktail.cocktail_ingredients.includes(:ingredient)
  end
end
