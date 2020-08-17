class AddWriterToArticles < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :writer, :string
  end
end
