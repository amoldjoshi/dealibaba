class CreateArticledetails < ActiveRecord::Migration[5.2]
  def change
    create_table :articledetails do |t|
      t.string :title
      t.text :content
      t.integer :article_id

      t.timestamps
    end
  end
end
