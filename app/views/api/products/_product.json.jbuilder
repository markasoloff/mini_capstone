json.id product.id
json.name product.name
json.price product.price
json.in_stock product.in_stock
json.description product.description
json.discounted product.is_discounted?


# json.images do
# json.array! @images, partial: 'images', as: :image
# end


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

#displays the supplier partial
json.supplier do 
  json.partial! product.supplier, partial: 'api/suppliers/supplier', as: :supplier
#product.supplier is a single supplier object.
end

# json.image do
#   json.partial! product.image, partial: 'api/images/image', as: :image
# end

json.current_user current_user