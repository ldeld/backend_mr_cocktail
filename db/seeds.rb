require 'open-uri'

puts "Cleaning db"
Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating Ingredients"

ingredients = {}
%w(Rum Coca-Cola Lemon Gin Tonic Cucumber).each do |ingredient|
  ingredients[ingredient] = Ingredient.create!(name: ingredient)
end


cuba_libre = Cocktail.create!(name: "Cuba Libre")
cuba_picture = URI.open('https://images.unsplash.com/photo-1517959105821-eaf2591984ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60')
cuba_libre.photo.attach(io: cuba_picture, filename: 'cuba.png', content_type: 'image/png')
cuba_ingredients = {
  "Rum" => "10 cl",
  "Coca-Cola" => "15 cl",
  "Lemon" => "1 cl"
}

cuba_ingredients.each do |ingredient, dose|
  CocktailIngredient.create!(
    cocktail: cuba_libre,
    ingredient: ingredients[ingredient],
    dose: dose
  )
end

gin_tonic = Cocktail.create!(name: "Gin & Tonic")
gin_picture = URI.open('https://images.unsplash.com/photo-1573459312070-c30bbfeaee33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
gin_tonic.photo.attach(io: gin_picture, filename: 'gin.png', content_type: 'image/png')
gin_ingredients = {
  "Gin" => "10 cl",
  "Tonic" => "15 cl",
  "Cucumber" => "2 slices"
}

gin_ingredients.each do |ingredient, dose|
  CocktailIngredient.create!(
    cocktail: gin_tonic,
    ingredient: ingredients[ingredient],
    dose: dose
  )
end
