class Ingredient < ApplicationRecord
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :cocktails, through: :cocktail_ingredients

  validates :name, uniqueness: true
end
