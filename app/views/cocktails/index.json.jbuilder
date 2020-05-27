json.array! @cocktails do |cocktail|
  json.id cocktail.id
  json.name cocktail.name
  json.url url_for(cocktail)
  json.image_url cl_image_path(cocktail.photo.key)
  json.created_at cocktail.created_at
end
