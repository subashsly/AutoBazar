class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.string :variant_name
      t.date :manufacture_year
      t.float :price
      t.string :available_colors
      t.date :launch_date
      t.references :vehicle_model, foreign_key: true
      t.timestamps
    end
  end
end
