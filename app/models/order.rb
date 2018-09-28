class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def attach_cart
    user.cart.update_all(order_id: id, status: "purchased")
  end

  def calculate_subtotal
    self.subtotal = carted_products.sum { |carted_product| carted_product.subtotal }
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def build_totals
    attach_cart
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end



# class Order < ApplicationRecord
#   belongs_to :user

#   has_many :carted_products
#   #why do orders have many carted_products
#   has_many :products, through: :carted_products


#   # def calculate_subtotal
#   #   self.subtotal = product.price = quantity
#   #   #inside the object, the self keyword is used instead of @order
#   # end

#   # def calculate_tax
#   #   self.tax = subtotal * 0.09
#   # end

#   # def calculate_total
#   #   self.total = subtotal + tax
#   # end

#   # def build_totals
#   #   calculate_subtotal
#   #   calculate_tax
#   #   calculate_total
#   # end
# end
