class CreateEngineAndTransmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :engine_and_transmissions do |t|
      t.text :engine_description
      t.string :engine_displacement
      t.text :engine_type
      t.text :no_of_cylinders
      t.text :fuel_type
      t.integer :valves_per_cylinder
      t.integer :fuel_supply_system
      t.boolean :turbo_charger
      t.string :super_charger
      t.integer :no_of_gears
      t.boolean :dual_clutch
      t.string :compression_ratio
      t.boolean :driving_modes
      t.boolean :manual_shifting_for_automatic
      t.boolean :engine_start_stop_function
      t.integer :transmission_type
      t.integer :drive_type
      t.integer :bore
      t.integer :stroke
      t.string :fuel_deliver_system
      t.string :ignition
      t.string :spark_plug
      t.string :cooling_system
      t.string :gear_box_type
      t.string :engine_cooling_system
      t.string :valve_configuration
      t.references :variant, foreign_key: true  
      t.timestamps
    end
  end
end
