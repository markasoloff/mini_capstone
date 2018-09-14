json.id order.id
json.product_id order.product_id
json.quantity order.quantity
json.user_email order.user #.email ---- undefined method `email' for nil:NilClass
json.quantity order.quantity
json.price order.product.price
json.subtotal order.subtotal
json.tax order.tax
json.total order.total

json.formatted do 
  json.price number_to_currency(order.product.price)
  json.subtotal number_to_currency(order.subtotal)
  json.tax number_to_currency(order.tax)
  json.total number_to_currency(order.total)

end

json.product do 
  json.partial! order.product, partial: 'api/products/product', as: :product
end

