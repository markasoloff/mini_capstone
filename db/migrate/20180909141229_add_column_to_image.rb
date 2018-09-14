class AddColumnToImage < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :alt, :string
  end
end
