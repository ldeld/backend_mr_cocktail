class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.with_attached_photo.all

    render :index
  end

  def show
    @cocktail = Cocktail.includes(cocktail_ingredients: :ingredient).find(params[:id])
  end

  def create
    @cocktail = Cocktail.create!(cocktail_params)
    render :show
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, cocktail_ingredients_attributes: [:dose, :ingredient_id])
  end
end
