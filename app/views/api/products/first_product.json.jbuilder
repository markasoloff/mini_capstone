json.array! @products.each do |product|
#I don't understand the above line. I need to learn .array! and each method and what | | do.
  json.id product.id
  json.name product.name
  json.price product.price
  json.description product.description
  json.image_url product.image_url
end 

