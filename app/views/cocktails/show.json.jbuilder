json.id @cocktail.id
json.name @cocktail.name
json.image_url cl_image_path @cocktail.photo.key

json.ingredients @cocktail_ingredients do |cocktail_ingredient|
  json.ingredient_id cocktail_ingredient.ingredient_id
  json.dose cocktail_ingredient.dose
  json.name cocktail_ingredient.ingredient.name
end
