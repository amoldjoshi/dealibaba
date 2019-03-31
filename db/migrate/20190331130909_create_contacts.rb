class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :question
      t.text :answer
      t.string :email

      t.timestamps
    end
  end
end
