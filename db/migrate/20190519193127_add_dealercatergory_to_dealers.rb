class AddDealercatergoryToDealers < ActiveRecord::Migration[5.2]
  def change
    add_column :dealers, :dealercategory, :string
  end
end
