class CreateEntertainments < ActiveRecord::Migration[6.0]
  def change
    create_table :entertainments do |t|
      t.boolean :radio
      t.boolean :cd_player
      t.boolean :usb_and_auxiliary_input
      t.boolean :bluetooth_connectivity
      t.boolean :front_speaker
      t.boolean :rear_speaker
      t.boolean :display
      t.boolean :display_screen_for_rear_passenger
      t.boolean :gps_navigation_system
      t.boolean :no_of_speaker
      t.boolean :voice_command
      t.boolean :steering_mounted_controls
      t.boolean :touch_display
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
