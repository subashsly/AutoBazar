class CreateOldVehicleInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :old_vehicle_informations do |t|
      t.integer :kilometer_runs
      t.integer :price
      t.boolean :price_negotiable
      t.boolean :condition
      t.string :used_period
      t.boolean :warranty
      t.string :warranty_remaining
      t.string :color
      t.integer :ownership
      t.date :registered_year
      t.references :user, foreign_key: true  
      t.references :variant, foreign_key: true 
      t.timestamps
    end
  end
end
