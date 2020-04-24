class CreateComforts < ActiveRecord::Migration[6.0]
  def change
    create_table :comforts do |t|
      t.boolean :key_less_entry
      t.boolean :air_conditioner
      t.boolean :rear_ac_vents
      t.boolean :automatic_climate_control
      t.boolean :heater
      t.boolean :power_outlet
      t.boolean :steering_adjustment
      t.boolean :adjustable_seat
      t.boolean :adjustable_seat_height
      t.boolean :power_steering
      t.boolean :foldable_rear_seat
      t.boolean :cup_holder_front
      t.boolean :cup_Holder_rear
      t.boolean :bottle_holder
      t.boolean :trunk_light
      t.boolean :vanity_mirror
      t.boolean :anti_glare_mirrors
      t.boolean :automatic_headlight
      t.integer :door_pockets
      t.boolean :sun_visor
      t.boolean :cruise_control
      t.integer :autonomous_parking
      t.integer :no_of_drive_mode
      t.string :drive_mode
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
