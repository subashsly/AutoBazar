class CreateBikeFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_features do |t|
    t.boolean :speedometer
    t.boolean :odometer
    t.integer :console
    t.integer :stand_alarm
    t.boolean :stepped_seat
    t.integer :tripmeter_type
    t.integer :no_of_tripmeter
    t.boolean :low_oil_indicator
    t.boolean :low_fuel_indicator
    t.boolean :low_battery_indicator
    t.boolean :pillion_backrest
    t.boolean :pillion_grabrall
    t.boolean :pillion_seat
    t.boolean :pillion_footrest
    t.boolean :digital_fuel_gauge
    t.integer :start_type
    t.boolean :shift_light
    t.boolean :kill_switch
    t.boolean :clock
    t.string :electric_system
    t.string :battery_type
    t.string :head_light_type
    t.string :head_light_bulb_type
    t.string :brake_tail_light
    t.boolean :turn_signal
    t.boolean :pass_signal
    t.boolean :battery_capacity
    t.boolean :mobile_connectivity
    t.boolean :adjustable_windscreen
    t.boolean :power_mode
    t.boolean :navigation
    t.boolean :touch_display
    t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
