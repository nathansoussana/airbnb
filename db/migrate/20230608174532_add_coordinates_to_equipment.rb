class AddCoordinatesToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :latitude, :float
    add_column :equipment, :longitude, :float
  end
end
