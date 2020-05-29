class Cocktail < ApplicationRecord
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :ingredients, through: :cocktail_ingredients
  accepts_nested_attributes_for :cocktail_ingredients
  has_one_attached :photo
end
