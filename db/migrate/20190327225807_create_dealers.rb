class CreateDealers < ActiveRecord::Migration[5.2]
  def change
    create_table :dealers do |t|
      t.integer :dealerid
      t.string :dealername
      t.string :dealerurl
      t.integer :dealertype

      t.timestamps
    end
  end
end
