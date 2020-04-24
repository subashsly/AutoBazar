class CreateSafeties < ActiveRecord::Migration[6.0]
  def change
    create_table :safeties do |t|
    	t.boolean :passenger_airbag
    	t.boolean :driver_airbag
    	t.boolean :front_side_airbag
    	t.boolean :rear_side_airbag
    	t.boolean :child_safety_lock
    	t.boolean :child_seat_anchor_points
    	t.boolean :brake_assist
    	t.boolean :edb
    	t.boolean :anti_lock_braking_system
    	t.boolean :rear_seat_belt
    	t.boolean :seat_belt_warning
    	t.boolean :hight_adjustable_front_seat_belt
    	t.boolean :rear_camera
    	t.integer :parking_sensor
    	t.boolean :engine_check_warning
    	t.boolean :crash_sensor
    	t.boolean :front_impact_beam
    	t.boolean :side_impact_beam
    	t.boolean :door_ajar_warning
    	t.boolean :tyre_pressure_monitoring_system
    	t.integer :no_of_airbags 
    	t.boolean :vehicle_stability_control_system
    	t.boolean :day_night_rear_view_mirror
    	t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
