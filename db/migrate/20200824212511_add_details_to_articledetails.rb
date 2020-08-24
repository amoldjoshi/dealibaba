class AddDetailsToArticledetails < ActiveRecord::Migration[5.2]
  def change
  	add_column :articledetails, :heading, :text
  	add_column :articledetails, :link, :string
  	add_column :articledetails, :quote, :text
  end
end
