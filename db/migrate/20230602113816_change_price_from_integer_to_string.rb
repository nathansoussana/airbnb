class ChangePriceFromIntegerToString < ActiveRecord::Migration[7.0]
  def change
    change_column :equipment, :price, :string
  end
end
