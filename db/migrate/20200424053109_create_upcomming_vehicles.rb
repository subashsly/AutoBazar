class CreateUpcommingVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :upcomming_vehicles do |t|
      t.integer :expected_price
      t.date :expected_launch_date
      t.text :description
      t.references :prototype, foreign_key: true
      t.timestamps
    end
  end
end
