class AddFamousquoteToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :famousquote, :text
    add_column :articles, :famousquoteby, :string
  end
end
