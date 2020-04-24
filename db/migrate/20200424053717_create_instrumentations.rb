class CreateInstrumentations < ActiveRecord::Migration[6.0]
  def change
    create_table :instrumentations do |t|
      t.boolean :tacho_meter
      t.integer :odometer
      t.boolean :speedometer
      t.integer :console
      t.boolean :tripmeter
      t.integer :no_of_tripmeter
      t.boolean :distance_to_empty
      t.integer :fuel_gauge
      t.boolean :engine_malfunction_light
      t.boolean :key_off_reminder
      t.boolean :head_light_reminder
      t.boolean :fasten_seat_warning
      t.integer :clock
      t.boolean :low_fuel_warning
      t.boolean :low_oil_warning
      t.boolean :low_battery_warning
      t.boolean :average_fuel_consumption
      t.boolean :average_speed
      t.boolean :outside_temperature_display
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
