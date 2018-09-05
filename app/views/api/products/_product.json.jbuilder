json.id product.id
json.name product.name
json.price product.price
json.image_url product.image_url
json.in_stock product.in_stock
json.description product.description
json.discounted product.is_discounted?

if product.is_discounted?
  json.sale_message "Discounted Price"
end


json.tax product.tax  
json.total product.total


  json.formatted do 
    json.price number_to_currency(product.price)
    json.tax number_to_currency(product.tax)
    json.total number_to_currency(product.total)
    
  end

