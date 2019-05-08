class AddProductDescriptionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :productdescription, :string
  end
end
