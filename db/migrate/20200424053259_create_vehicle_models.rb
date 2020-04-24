class CreateVehicleModels < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_models do |t|
    	t.string :model_name
      t.text :description
      t.string :image
      t.integer :no_of_views
      t.integer :status
      t.integer :max_price
      t.integer :min_price
      t.references :brand, foreign_key: true
      t.references :vehicle_type, foreign_key: true
      t.timestamps
    end
  end
end
