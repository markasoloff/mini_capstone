class Supplier < ApplicationRecord
  
  has_many :products
  # The line above is the shorthand version of the method below.
  # def products
  #   Product.where(supplier_id: id)
  # end



end
