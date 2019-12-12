class AddProductcategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :productcategory, :string
  end
end
