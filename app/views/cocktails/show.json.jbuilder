json.id @cocktail.id
json.name @cocktail.name
if @cocktail.photo.attached?
  json.image_url cl_image_path @cocktail.photo.key
else
  json.image_url nil
end

json.ingredients @cocktail.cocktail_ingredients do |cocktail_ingredient|
  json.ingredient_id cocktail_ingredient.ingredient_id
  json.dose cocktail_ingredient.dose
  json.name cocktail_ingredient.ingredient.name
end
