class AddProductbuttonToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :productbutton, :string
  end
end
