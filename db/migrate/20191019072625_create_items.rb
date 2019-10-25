class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :itemname
      t.string :itemurl
      t.float :itemprice
      t.string :itembutton
      t.text :itemdescription
      t.integer :article_id

      t.timestamps
    end
  end
end
