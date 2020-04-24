class CreateVehicleTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_types do |t|
      t.string :vehicle_type_title
      t.string :image
      t.text :description    	
      t.timestamps
    end
  end
end
