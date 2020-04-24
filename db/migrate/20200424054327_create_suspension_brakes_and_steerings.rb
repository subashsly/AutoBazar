class CreateSuspensionBrakesAndSteerings < ActiveRecord::Migration[6.0]
  def change
    create_table :suspension_brakes_and_steerings do |t|
      t.string :front_suspension
      t.string :rear_suspension
      t.integer :front_brake_type
      t.integer :front_brake_size
      t.string :steering_type
      t.boolean :adjustable_steering_column
      t.integer :shock_absorber_type
      t.bigint :turning_radius
      t.integer :steering_column
      t.references :variant, foreign_key: true  
      t.timestamps
    end
  end
end
