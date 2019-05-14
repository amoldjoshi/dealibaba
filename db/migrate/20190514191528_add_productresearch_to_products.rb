class AddProductresearchToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :productresearch, :string
  end
end
