class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :sport
      t.string :equipmentname
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
