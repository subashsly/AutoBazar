class CreateMiscellaneous < ActiveRecord::Migration[6.0]
  def change
    create_table :miscellaneous do |t|
      t.boolean :leather_seats
      t.boolean :electric_adjustable_seats
      t.boolean :automatic_driving_lights
      t.string :interior_color
      t.boolean :advance_safety_feature
      t.boolean :central_mounted_fuel_tank
      t.boolean :leather_steering_wheel
      t.integer :warranty_kilometers
      t.integer :warranty_years
      t.string :free_service_period
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
