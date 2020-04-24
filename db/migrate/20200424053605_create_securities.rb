class CreateSecurities < ActiveRecord::Migration[6.0]
  def change
    create_table :securities do |t|
      t.boolean :central_locking
      t.boolean :power_door_locks
      t.boolean :anti_theft_device
      t.boolean :anti_theft_alarm
      t.boolean :engine_immobilizer
      t.boolean :speed_sensor_door_lock
      t.boolean :smart_access_card_entry
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
