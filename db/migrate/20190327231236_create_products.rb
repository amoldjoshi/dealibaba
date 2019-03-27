class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :productid
      t.string :productname
      t.string :producturl
      t.integer :producttype
      t.float :productprice

      t.timestamps
    end
  end
end
