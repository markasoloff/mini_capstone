class ChangePriceOnProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 10, scale: 2
  end
end
