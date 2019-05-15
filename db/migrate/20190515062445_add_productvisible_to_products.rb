class AddProductvisibleToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :productvisible, :boolean, default: :false
  end
end
