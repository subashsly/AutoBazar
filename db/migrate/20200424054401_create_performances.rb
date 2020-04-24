class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.bigint :power
      t.bigint :torque
      t.integer :top_speed
      t.integer :city_mileage
      t.integer :highway_mileage
      t.integer :overall_mileage
      t.column :acceleration_0_60, "double"
      t.column :acceleration_0_100, "double"
      t.column :braking_60_0, "double"
      t.column :braking_100_0, "double"
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
