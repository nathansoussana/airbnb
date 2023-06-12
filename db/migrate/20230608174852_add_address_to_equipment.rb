class AddAddressToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :address, :string
  end
end
