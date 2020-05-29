json.array! @cocktails do |cocktail|
  json.id cocktail.id
  json.name cocktail.name
  json.url url_for(cocktail)
  if cocktail.photo.attached?
    json.image_url cl_image_path(cocktail.photo.key)
  else
    json.image_url nil
  end
  json.created_at cocktail.created_at
end
