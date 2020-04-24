class CreateDimensionAndCapacities < ActiveRecord::Migration[6.0]
  def change
    create_table :dimension_and_capacities do |t|
      t.integer :length
      t.string :width
      t.string :height
      t.decimal :kerb_wight
      t.decimal :wheel_base
      t.integer :ground_clearence
      t.integer :fuel_tank_capacity
      t.integer :bootspace
      t.integer :no_of_doors
      t.string :seating_capacity
      t.string :chassis_type
      t.integer :seat_height
      t.integer :reserve_fuel_capacity
      t.references :variant, foreign_key: true  
      t.timestamps
    end
  end
end
